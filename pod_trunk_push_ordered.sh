#!/bin/bash
#
# pod_trunk_push_ordered.sh
#
# Autonomously publishes a set of podspecs to the CocoaPods trunk in a
# specified order, with persistent state, idempotent resume, and smart
# error handling.
#
# Behavior:
#   * On first run, prompts for the ordered list of podspecs (interactive).
#     The order is saved to podspec_order.txt and survives reruns.
#   * On re-run, uses podspec_order.txt as-is — no re-prompting.
#   * For each podspec, parses (name, version), then:
#       1. Pre-checks `pod trunk info <name>` — if the target version is
#          already listed, marks it done and continues.
#       2. Otherwise runs `pod trunk push` with retries:
#            - "Unable to accept duplicate entry" → success (idempotent).
#            - "internal server error" / "GitHub commit API timed out"
#              → wait 30s, re-verify via `pod trunk info` (the push may
#              have actually committed), then either skip-as-success or
#              retry with exponential backoff (max 4 attempts).
#            - Any other failure → abort.
#   * Progress is appended to podspec_progress.txt; rerunning picks up
#     exactly where the previous run left off.
#
# Flags:
#   --reset, --fresh   Delete podspec_order.txt and podspec_progress.txt
#                      and prompt for a fresh order.
#   --help, -h         Show this help.
#

set -o pipefail

ORDER_FILE="podspec_order.txt"
PROGRESS_FILE="podspec_progress.txt"

# ─── Argument parsing ──────────────────────────────────────────────────
RESET=0
for arg in "$@"; do
  case "$arg" in
    --reset|--fresh)
      RESET=1
      ;;
    --help|-h)
      sed -n '2,30p' "$0"
      exit 0
      ;;
    *)
      echo "Unknown option: $arg"
      echo "Try $0 --help"
      exit 2
      ;;
  esac
done

if [ "$RESET" -eq 1 ]; then
  rm -f "$ORDER_FILE" "$PROGRESS_FILE"
  echo "Reset: cleared $ORDER_FILE and $PROGRESS_FILE."
fi

# ─── Helpers ───────────────────────────────────────────────────────────
extract_pod_name() {
  grep -E '^[[:space:]]*s\.name[[:space:]]*=' "$1" \
    | sed -E 's/.*=[[:space:]]*"([^"]+)".*/\1/' \
    | head -1
}

extract_pod_version() {
  grep -E '^[[:space:]]*s\.version[[:space:]]*=' "$1" \
    | sed -E 's/.*=[[:space:]]*"([^"]+)".*/\1/' \
    | head -1
}

# Returns 0 if <pod> has <version> listed on trunk, 1 otherwise.
is_on_trunk() {
  local pod="$1" ver="$2"
  pod trunk info "$pod" 2>/dev/null \
    | awk -v v="$ver" '
        /^[[:space:]]+- / {
          gsub(/^[[:space:]]+- /, "")
          sub(/ \(.*/, "")
          if ($0 == v) found = 1
        }
        END { exit !found }
      '
}

# Push a single podspec, retrying on transient errors.
# Args: 1=podspec_path  2=pod_name  3=target_version
# Returns: 0 on success (or already-on-trunk), 1 on hard failure.
attempt_push() {
  local podspec="$1"
  local pod_name="$2"
  local target_version="$3"
  local max_attempts=4
  local backoff=30
  local attempt
  local output
  local rc

  for attempt in $(seq 1 $max_attempts); do
    echo "  Attempt $attempt/$max_attempts: pod trunk push $podspec ..."
    output=$(pod trunk push "$podspec" \
              --allow-warnings \
              --skip-import-validation \
              --synchronous 2>&1)
    rc=$?
    # Echo the last few lines so the operator can see what happened.
    echo "$output" | tail -6

    # Hard success.
    if [ "$rc" -eq 0 ]; then
      return 0
    fi

    # Soft success — the pod is already published at this version.
    # (Could happen if a previous run committed but reported an error.)
    if echo "$output" | grep -q "Unable to accept duplicate entry"; then
      echo "  ↷ Already on trunk (duplicate entry). Treating as success."
      return 0
    fi

    # Ambiguous failure — the push may have actually succeeded on the
    # server side despite CocoaPods reporting an error. Verify via trunk.
    if echo "$output" | grep -qE "An internal server error|Calling the GitHub commit API timed out"; then
      echo "  ⚠ Transient error. Waiting 30s then verifying via pod trunk info ..."
      sleep 30
      if is_on_trunk "$pod_name" "$target_version"; then
        echo "  ✓ Verified $pod_name $target_version actually on trunk — push succeeded silently."
        return 0
      fi
      echo "  Not on trunk after wait. Backing off ${backoff}s and retrying ..."
      sleep "$backoff"
      backoff=$((backoff * 2))
      continue
    fi

    # Any other error: hard failure, abort.
    echo "  ✗ Hard failure — not a known transient pattern. Aborting."
    return 1
  done

  echo "  ✗ Exhausted $max_attempts attempts."
  return 1
}

# ─── Step 1: build/load the ordered list ──────────────────────────────
if [ -s "$ORDER_FILE" ]; then
  echo "Using existing order from $ORDER_FILE ($(wc -l < "$ORDER_FILE" | tr -d ' ') pods):"
  cat "$ORDER_FILE"
  echo ""
else
  echo "Listing all .podspec files ..."
  podspecs=()
  while IFS= read -r file; do
    podspecs+=("$file")
  done < <(find . -maxdepth 1 -name "*.podspec" -type f -print | sed 's|^\./||' | sort)

  if [ ${#podspecs[@]} -eq 0 ]; then
    echo "No .podspec files found."
    exit 1
  fi

  echo "Available podspecs:"
  for ((i=0; i<${#podspecs[@]}; i++)); do
    echo "($((i+1))) ${podspecs[$i]}"
  done

  echo ""
  echo "Enter numbers in push order, one per line, then Ctrl+D:"
  : > "$ORDER_FILE"
  while read -p "→ " num; do
    if [[ "$num" =~ ^[0-9]+$ ]] && (( num > 0 && num <= ${#podspecs[@]} )); then
      echo "${podspecs[$((num-1))]}" >> "$ORDER_FILE"
    else
      echo "Invalid number '$num'. Skipping."
    fi
  done

  if [ ! -s "$ORDER_FILE" ]; then
    echo "No podspecs selected. Exiting."
    rm -f "$ORDER_FILE"
    exit 1
  fi

  echo ""
  echo "Saved order to $ORDER_FILE:"
  cat "$ORDER_FILE"
  echo ""
fi

# ─── Step 2: iterate and push ──────────────────────────────────────────
touch "$PROGRESS_FILE"

pushed=0
skipped_done=0    # already in progress file
skipped_trunk=0   # detected on trunk via pre-check
failed=0

while IFS= read -r podspec || [ -n "$podspec" ]; do
  [ -z "$podspec" ] && continue

  if grep -qFx "$podspec" "$PROGRESS_FILE"; then
    echo "↷ Skipping $podspec (already in $PROGRESS_FILE)"
    skipped_done=$((skipped_done + 1))
    continue
  fi

  if [ ! -f "$podspec" ]; then
    echo "✗ $podspec not found in current directory. Aborting."
    failed=$((failed + 1))
    break
  fi

  pod_name=$(extract_pod_name "$podspec")
  target_version=$(extract_pod_version "$podspec")

  if [ -z "$pod_name" ] || [ -z "$target_version" ]; then
    echo "✗ Could not parse name/version from $podspec. Aborting."
    failed=$((failed + 1))
    break
  fi

  echo ""
  echo "═══ $podspec → $pod_name $target_version ═══"

  # Pre-check: if it's already on trunk, mark done and continue.
  if is_on_trunk "$pod_name" "$target_version"; then
    echo "↷ $pod_name $target_version already on trunk. Marking done."
    echo "$podspec" >> "$PROGRESS_FILE"
    skipped_trunk=$((skipped_trunk + 1))
    continue
  fi

  # Push (with retries).
  if attempt_push "$podspec" "$pod_name" "$target_version"; then
    echo "$podspec" >> "$PROGRESS_FILE"
    pushed=$((pushed + 1))
  else
    echo "✗ Could not publish $podspec. Stopping."
    echo "  State files preserved — re-run $0 to resume."
    failed=$((failed + 1))
    break
  fi
done < "$ORDER_FILE"

# ─── Step 3: summary ───────────────────────────────────────────────────
total=$(wc -l < "$ORDER_FILE" | tr -d ' ')
done_now=$((pushed + skipped_done + skipped_trunk))

echo ""
echo "═══ Summary ═══"
echo "Total in order:       $total"
echo "Pushed this run:      $pushed"
echo "Skipped (already done): $skipped_done"
echo "Skipped (on trunk):   $skipped_trunk"
echo "Failed:               $failed"

if [ "$failed" -eq 0 ] && [ "$done_now" -eq "$total" ]; then
  echo ""
  echo "🎉 All $total podspecs published. State files kept for audit; use --reset to clear."
  exit 0
elif [ "$failed" -gt 0 ]; then
  exit 1
else
  echo ""
  echo "⚠ Run ended without finishing the full order. Re-run to continue."
  exit 1
fi
