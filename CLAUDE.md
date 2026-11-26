# cocoapod — production CocoaPods source for Bidmad iOS

This is the **public release repo** (`github.com/bidmad/cocoapod`) that CocoaPods trunk points at. Every production pod (`BidmadSDK`, `OpenBiddingHelper`, `BidmadGoogleGDPRAdapter`, `BidmadFlutterBridge`, every `Bidmad*Adapter`, `BidmadPartners`) has its podspec and XCFramework here. Source code and the build live in `../BidmadSDK-DevSuite-NextGen`. This file covers what is specific to this repo.

**Frozen at 7.1.1.** From 7.2.0 the iOS SDK ships through Swift Package Manager only, from the `bidmad/*-SPM` repositories that DevSuite's `bidmad-spm` publishes (see DevSuite's `CLAUDE.md`); CocoaPods trunk goes read-only on 2026-12-02. No new SDK or adapter pods are released from here. The notes below describe how 7.1.1 and earlier were released, for reference and for publishers still on those pods. The Flutter and Unity plugins keep consuming these pods until their own SPM migration.

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

Ask which follow-ups this release needs (never a fixed list): `Bidmad-iOS` `BidmadPackages/Package.swift` (the gold-standard pins, see below), `Bidmad-Flutter` branch podspecs and README adapter lists, `Bidmad-Flutter-Sample` Podfile, `Bidmad-Unity` `OBHDependencies.xml`. The pins in DevSuite and Bidmad-iOS are intentional; never call one "outdated" because upstream moved.

Repos that keep no `CLAUDE.md` of their own have their notes in one that does: `Bidmad-iOS` here (below); `Bidmad-Android`, its wiki and `Bidmad-Flutter-Sample` in the `master` branch of `../Bidmad-Flutter` (`git -C ../Bidmad-Flutter show master:CLAUDE.md`); `Bidmad-Unity` in `../Bidmad-Unity-SourceCode/CLAUDE.md`.

## Public iOS guide: `../Bidmad-iOS` (`bidmad/Bidmad-iOS`)

Public repo for publishers: `README.md` (Korean), `README[EN].md` (English), `CHANGELOG.md`, `images/spm/` (installation screenshots), the sample app `BidmadSDKTest` and `BidmadPackages/`. It has no `CLAUDE.md`; don't add one there. From 7.2.0 it documents Swift Package Manager only; the CocoaPods guide for 7.1.1 and earlier lives in its wiki (`CocoaPods-Installation-Guide-[KOR]/[ENG]`, linked from References).

### `BidmadPackages/Package.swift` is the gold standard

The guide has publishers create a local umbrella package, `BidmadPackages`: one line per `bidmad/*-SPM` repository with an exact version and its products, plus an empty `Sources/BidmadPackages/BidmadPackages.swift`, added via Xcode › Add Package Dependencies › Add Local… and linked to the app target, with `-ObjC` in Other Linker Flags (without it the static adapters — AdMob, Ad Manager, Pangle, Unity Ads, Fyber, AdPie — and Google's mediation adapters drop out silently). The sample uses this exact folder, and the README embeds the same `Package.swift` (indented inside the numbered list); keep them byte-identical. Its pins are the reference set Unity and Flutter copy. Never call a pin "outdated" because a network SDK moved upstream.

- **AppLovin MAX is never listed:** no `BidmadAppLovinMAXAdapter`, no `BidmadPartnersAppLovinMax`. The regular `BidmadAppLovinAdapter` is fine.
- The general set is 14 adapters (AdMob, Ad Manager, AppLovin, Unity Ads, Pangle, Fyber, Vungle, Teads, AdFit, AdPie, Taboola, PremiumAdsGoogle, Mobwith, ORTB) plus `BidmadPartnersAdMobBidding` (both its products). Coupang, Covi and DirectAd stay out.
- Every package stays on the core's `X.Y`; versions are the tags on each repository's Releases page.

### Updating it for a release

1. Edit the versions in `BidmadPackages/Package.swift` and the same block in both READMEs.
2. Open `BidmadSDKTest.xcodeproj`, File › Packages › Resolve Package Versions (updates `Package.resolved`), then build with `DEVELOPER_DIR=/Applications/Xcode26_for_build.app/Contents/Developer` and run on an iOS 26 and an iOS 27 simulator. The sample uses the UIScene lifecycle (`SceneDelegate`, scene manifest in `Info.plist`); iOS 27 kills apps without it.
3. `CHANGELOG.md`: prepend `#### Version X.Y.Z` with a one-line summary, a short **변경 사항** list and the **버전** lines (`old → **new**`). Keep it very short.
4. Korean and English READMEs change together. Pushing is a publishing step: show the diff and wait for a yes.
