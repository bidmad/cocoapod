#!/bin/bash

# 1. List all .podspec files (using find) and store them in an array.
echo "Listing all .podspec files ..."
podspecs=()
while IFS= read -r file; do
  podspecs+=("$file")
done < <(find . -maxdepth 1 -name "*.podspec" -type f -print | sed 's|^\./||')

if [ ${#podspecs[@]} -eq 0 ]; then
  echo "No .podspec files found."
  exit 1
fi

# 2. Prompt the user to select the order (using a numbered menu).
echo "Select the order of podspecs (enter the number for each podspec, one per line, then press Ctrl+D):"
echo "Available podspecs:"
for ((i=0; i<${#podspecs[@]}; i++)); do
  echo "($((i+1))) ${podspecs[$i]}"
done

# (Optional) Clear any existing temporary file (podspec_order.txt) if it exists.
rm -f podspec_order.txt

# (Optional) Use a temporary file (podspec_order.txt) to store the ordered list.
# (In a real script, you might use a variable or an array instead.)
while read -p "Enter number (or Ctrl+D to finish): " num; do
  if [[ "$num" =~ ^[0-9]+$ ]] && (( num > 0 && num <= ${#podspecs[@]} )); then
    echo "${podspecs[$((num-1))]}" >> podspec_order.txt
  else
    echo "Invalid number. Skipping."
  fi
done

# (Optional) Read the ordered list from the temporary file (podspec_order.txt).
if [ ! -s podspec_order.txt ]; then
  echo "No podspecs selected. Exiting."
  rm -f podspec_order.txt
  exit 1
fi

echo "Ordered podspecs (from podspec_order.txt):"
cat podspec_order.txt

# 3. Call "pod trunk push" sequentially (with --allow-warnings --skip-import-validation --synchronous) for each selected podspec.
echo "Pushing podspecs in the selected order ..."
while read -r podspec; do
  echo "Pushing $podspec ..."
  pod trunk push "$podspec" --allow-warnings --skip-import-validation --synchronous
  if [ $? -ne 0 ]; then
    echo "Error pushing $podspec. Exiting."
    rm -f podspec_order.txt
    exit 1
  fi
done < podspec_order.txt

# (Optional) Clean up the temporary file (podspec_order.txt) at the end.
rm -f podspec_order.txt

echo "Done." 