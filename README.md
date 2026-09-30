# BidmadSDK CocoaPods Change Logs
## BidmadAppLovinMAXAdapter 13.6.2.15.1
- MAX SDK initialization wait lengthened from 5 s to 10 s: a cold start whose MAX init ran past 5 s failed the first load and never retried in that process
- Pair with `BidmadPartners/AppLovinMax` 1.0.14 for the MAX network adapters. Not for use alongside `BidmadAppLovinAdapter` (legacy AppLovin) in the same app
- `ReleaseAPPLOVINMAX.sh` added for trunk push
## BidmadPartners 1.0.14
- `AppLovinMax` subspec added: AppLovin MAX mediation adapters for Google(AdMob) 13.2.0.0, DT Exchange(Fyber) 8.4.6.0, InMobi 11.2.0.0, Liftoff(Vungle) 7.7.2.1, Meta 6.21.1.0, Mintegral 8.0.9.0.0, Moloco 4.5.1.0, Pangle(ByteDance) 7.9.0.8.0, Unity Ads 4.17.0.0
- Each MAX adapter wraps exactly the network SDK pinned by the Bidmad adapters / `AdMobBidding` subspec, and only versions listed in AppLovin's official changelogs are used, so both subspecs can be installed together without SDK version conflicts
- Use with `BidmadAppLovinMAXAdapter` (13.6.2.15.1 or later recommended; 13.6.2.15.0 works). Do not integrate `BidmadAppLovinAdapter` (legacy AppLovin) in the same app: both adapters initialize the AppLovin SDK singleton and only the first configuration applies
- `AdMobBidding` subspec unchanged from 1.0.13. Meta 6.21.1.0 requires Xcode 26.0; a later move to Meta 6.22.x would require iOS 15
- `ReleasePARTNERS.sh` added for trunk push
## Version 2.6.3
- BidmadSDK and OpenBiddingHelper Logics are merged
- AdColony Adapter framework is now removed from dependency list
