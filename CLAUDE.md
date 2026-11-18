# cocoapod — production CocoaPods source for Bidmad iOS

This is the **public release repo** (`github.com/bidmad/cocoapod`) that CocoaPods trunk points at. Every production pod (`BidmadSDK`, `OpenBiddingHelper`, `BidmadGoogleGDPRAdapter`, `BidmadFlutterBridge`, every `Bidmad*Adapter`, `BidmadPartners`) has its podspec and XCFramework here. Source code and the build live in `../BidmadSDK-DevSuite-NextGen`; its `CLAUDE.md` ("Production CocoaPods Release") is the full runbook. This file covers what is specific to this repo.

## Publishing is gated

Pushing commits or tags here and `pod trunk push` are publishing steps: state exactly which pods and versions go out and get an explicit yes for each step. Never overwrite, move or reuse a published version or tag — fix forward with a new version.

## What lives here

- `*.podspec` — one per pod. `s.source` tag must equal the git tag `{PodName}.{Version}` (e.g. `BidmadSDK.7.1.1`, `BidmadMobwithAdapter.2.0.0.15.1`).
- `*.xcframework` — copied in by DevSuite's `build_frameworks.command --sync-dest ../cocoapod` (or `sync_xcframeworks.sh`). Never edit or rebuild them here. Bundles DevSuite does not build (`CaulySDK`, `LibADPlus`, `OMSDK_Cjnet`, `EmptyProject*`) stay untouched.
- `README.md` — "BidmadSDK CocoaPods Change Logs". Prepend one `## Version X.Y.Z` (or `## <Pod> <version>`) entry per release.
- `commit_tags.sh` — creates local tags from the podspecs' `s.source` tags (no push).
- `pod_trunk_push_ordered.sh` — ordered, resumable trunk push that re-checks `pod trunk info` after `504 GitHub commit API timed out` / internal errors. Prefer it over hand-rolled loops.
- `Release<NETWORK>.sh` — one-pod trunk push helpers. `ReleaseADMIXER.sh` / `ReleaseADPOPCORN.sh` are for networks that are no longer supported; don't use them.
- `ADOPUtility.podspec` is deprecated — don't update it.

## Release conventions

- Commit message: `<version> 정식 배포 — <summary>` (e.g. `7.1.1 정식 배포 — 코어 4종 + 어댑터 2종 (Mobwith / Taboola)`), or `<Pod> <version> 정식 배포` for single pods. No AI co-author lines.
- Push order (dependencies): `BidmadSDK` → `OpenBiddingHelper` → `BidmadGoogleGDPRAdapter` → `BidmadFlutterBridge` → adapters (any order). Always `--allow-warnings --skip-import-validation --synchronous`.
- **Trunk 504s:** a push that returns `504 … GitHub commit API timed out` may still have landed. Check `pod trunk info <Pod>` before any retry; never push a version that is already there.
- Core minor bumps (7.0 → 7.1) are binary-incompatible: adapters move to the next generation suffix (`.14.x` → `.15.x`) and require `BidmadSDK >= 7.1.0, < 7.2.0`.
- After publishing, tag the DevSuite source commit too (`{PodName}.{Version}`), and open the merge-back PR there if the release came from a branch.

## BidmadPartners (released only from here)

`BidmadPartners.podspec` is not built by DevSuite; it is edited and pushed here (`ReleasePARTNERS.sh`).
- Subspec `AdMobBidding` — Google AdMob mediates the partner networks. This is what the public guides, Unity and every Flutter variant use, pinned at **1.0.13**.
- Subspec `AppLovinMax` (added in **1.0.14**, together with `BidmadAppLovinMAXAdapter` 13.6.2.15.1) — AppLovin MAX mediates them. **AppLovin MAX must never reach the general builds** (guides, Unity, Flutter). The `AdMobBidding` subspec is identical in 1.0.13 and 1.0.14, so downstream stays on 1.0.13; don't "upgrade" it because 1.0.14 is newer.
- `BidmadPartners-hanamoney.podspec` is a separate variant with its own version line and tag prefix.

## Downstream after a release

Ask which follow-ups this release needs (never a fixed list): `Bidmad-iOS` Podfile (the gold-standard pins, see below), `Bidmad-Flutter` branch podspecs and README adapter lists, `Bidmad-Flutter-Sample` Podfile, `Bidmad-Unity` `OBHDependencies.xml`. The pins in DevSuite and Bidmad-iOS are intentional; never call one "outdated" because upstream moved.

Repos that keep no `CLAUDE.md` of their own have their notes in one that does: `Bidmad-iOS` here (below); `Bidmad-Android`, its wiki and `Bidmad-Flutter-Sample` in the `master` branch of `../Bidmad-Flutter` (`git -C ../Bidmad-Flutter show master:CLAUDE.md`); `Bidmad-Unity` in `../Bidmad-Unity-SourceCode/CLAUDE.md`.

## Public iOS guide: `../Bidmad-iOS` (`bidmad/Bidmad-iOS`)

Public repo for publishers: `README.md` (Korean), `README[EN].md` (English), `CHANGELOG.md`, and the sample app `BidmadSDKTest` with its `Podfile`. It has no `CLAUDE.md`; don't add one there.

### Its `Podfile` is the gold standard

The `Podfile` pins are the reference set that Unity (`OBHDependencies.xml`), every Bidmad-Flutter README and podspec, and the Flutter sample copy. Never call a pin "outdated" because a network SDK moved upstream — the versions are chosen on purpose.

- **AppLovin MAX is never listed:** no `BidmadAppLovinMAXAdapter`, no `BidmadPartners/AppLovinMax`. The regular `BidmadAppLovinAdapter` is fine.
- `BidmadPartners/AdMobBidding` stays at **1.0.13** (see above).
- When the core minor moves (7.0 → 7.1), every adapter moves to the next generation suffix (`.14.x` → `.15.x`) in the same change; mixing generations fails `pod install`.

### Updating it for a release

1. Edit the `Podfile` pins to the versions the release published. `update_pod_versions.sh` sets every pod to the **latest on trunk** — read it before use; latest is not always what the release intends (e.g. BidmadPartners).
2. `pod install` (with `LANG=en_US.UTF-8`), then build the sample: `DEVELOPER_DIR=/Applications/Xcode26_for_build.app/Contents/Developer xcodebuild …` — the default Xcode 27.2 rejects the iOS 14 deployment target. Run it on an **iOS 26** simulator (iOS 27 kills apps without UIScene adoption).
3. `update_readmes.sh` regenerates the Podfile snippets in both READMEs from the `Podfile`. Edit Korean and English together.
4. `CHANGELOG.md`: prepend `#### Version X.Y.Z` with a one-line summary, a short **변경 사항** list and the **버전** lines (`old → **new**`). Keep it very short — no internal detail (e.g. enum cases, log types) and no "just update your Podfile" boilerplate.
5. Commit as `BidmadSDK Update to X.Y.Z`. No AI co-author lines. Pushing is a publishing step: show the diff and wait for a yes (the maintainer often pushes it personally).
