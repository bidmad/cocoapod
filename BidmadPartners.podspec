Pod::Spec.new do |s|

  s.name          = "BidmadPartners"
  s.version       = "1.0.14"
  s.platform      = :ios, "14.0"
  s.summary       = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support."
  s.description   = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support. Two subspecs are provided: AdMobBidding (Google AdMob mediates the partner networks) and AppLovinMax (AppLovin MAX mediates the partner networks)."
  s.homepage      = "https://bidmad.net"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Markus" => "markus@adop.cc" }
  s.source        = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadPartners.1.0.14' }
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc = true
  s.vendored_frameworks = "EmptyProject.xcframework"

  # Direction: Google AdMob mediates these networks (GoogleMobileAdsMediation* pods).
  # Each pod pins its network SDK exactly; versions follow the Bidmad adapter pins.
  s.subspec 'AdMobBidding' do |admob_bidding|
    admob_bidding.dependency 'GoogleMobileAdsMediationVungle', '7.7.2.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationPangle', '7.9.0.8.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationFyber', '8.4.6.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationUnity', '4.17.0.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationAppLovin', '13.6.2.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationFacebook', '6.21.1.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationMintegral', '8.0.9.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationInMobi', '11.2.0.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationMoloco', '4.5.1.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationLine', '3.0.1.0'
  end

  # Direction: AppLovin MAX mediates these networks (AppLovinMediation*Adapter pods).
  # Use together with BidmadAppLovinMAXAdapter. Each pod pins its network SDK exactly and
  # is chosen so the wrapped SDK equals the version pinned by the Bidmad adapters /
  # AdMobBidding subspec above; every version is listed in AppLovin's official changelog.
  # Not for use alongside BidmadAppLovinAdapter (legacy AppLovin) in the same app.
  s.subspec 'AppLovinMax' do |applovin_max|
    applovin_max.dependency 'AppLovinMediationGoogleAdapter', '13.2.0.0'      # Google-Mobile-Ads-SDK 13.2.0
    applovin_max.dependency 'AppLovinMediationFyberAdapter', '8.4.6.0'        # Fyber_Marketplace_SDK 8.4.6 (DT Exchange)
    applovin_max.dependency 'AppLovinMediationInMobiAdapter', '11.2.0.0'      # InMobiSDK 11.2.0
    applovin_max.dependency 'AppLovinMediationVungleAdapter', '7.7.2.1'       # VungleAds 7.7.2 (Liftoff Monetize)
    applovin_max.dependency 'AppLovinMediationFacebookAdapter', '6.21.1.0'    # FBAudienceNetwork 6.21.1 (Meta)
    applovin_max.dependency 'AppLovinMediationMintegralAdapter', '8.0.9.0.0'  # MintegralAdSDK 8.0.9
    applovin_max.dependency 'AppLovinMediationMolocoAdapter', '4.5.1.0'       # MolocoSDKiOS 4.5.1
    applovin_max.dependency 'AppLovinMediationByteDanceAdapter', '7.9.0.8.0'  # Ads-Global 7.9.0.8 (Pangle)
    applovin_max.dependency 'AppLovinMediationUnityAdsAdapter', '4.17.0.0'    # UnityAds 4.17.0
  end

end
