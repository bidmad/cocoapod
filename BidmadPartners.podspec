Pod::Spec.new do |s|

  s.name          = "BidmadPartners"
  s.version       = "1.0.0"
  s.platform      = :ios, "12.0"
  s.summary       = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support."
  s.description   = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support. The mediation currently includes AdMob Bidding or AppLovin Max."
  s.homepage      = "https://bidmad.net"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Markus" => "markus@adop.cc" }
  s.source        = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'PARTNER.1.0.0' }
  s.swift_version = '5.0'
  
  s.static_framework = false
  s.requires_arc     = true
  s.vendored_frameworks = "ADOPUtility.xcframework"

  s.subspec 'AdMobBidding' do |AdMobBidding|
    AdMobBidding.dependency 'BidmadVungleAdapter', '7.1.0.1'
    AdMobBidding.dependency 'GoogleMobileAdsMediationVungle', '7.1.0.0'
    AdMobBidding.dependency 'BidmadPangleAdapter', '5.3.1.0.1'
    AdMobBidding.dependency 'GoogleMobileAdsMediationPangle', '5.3.1.0.0'
    AdMobBidding.dependency 'BidmadFyberAdapter', '8.2.4.1'
    AdMobBidding.dependency 'GoogleMobileAdsMediationFyber', '8.2.4.0'
    AdMobBidding.dependency 'BidmadUnityAdsAdapter', '4.8.0.1'
    AdMobBidding.dependency 'GoogleMobileAdsMediationUnity', '4.8.0.0'
    AdMobBidding.dependency 'BidmadIronSourceAdapter', '7.5.0.0.1'
    AdMobBidding.dependency 'GoogleMobileAdsMediationIronSource', '7.5.0.0.0'
    AdMobBidding.dependency 'BidmadAppLovinAdapter', '11.11.3.1'
    AdMobBidding.dependency 'GoogleMobileAdsMediationAppLovin', '11.11.3.0'
    AdMobBidding.dependency 'BidmadTeadsAdapter', '5.0.27.1'
    AdMobBidding.dependency 'BidmadPubmaticAdapter', '3.2.0.1'
    AdMobBidding.dependency 'BidmadAtomAdapter', '1.0.0.1'
    AdMobBidding.dependency 'BidmadAdFitAdapter', '3.12.7.1'
    AdMobBidding.dependency 'BidmadAdColonyAdapter', '4.9.0.1'
    AdMobBidding.dependency 'BidmadADOPCoupangAdapter', '1.0.0.1'
    AdMobBidding.dependency 'BidmadGoogleAdMobAdapter', '10.12.0.1'
    AdMobBidding.dependency 'BidmadGoogleAdManagerAdapter', '10.12.0.1'
  end
  
  s.subspec 'AppLovinMax' do |AppLovinMax|
    AppLovinMax.dependency 'BidmadVungleAdapter', '7.1.0.1'
    AppLovinMax.dependency 'AppLovinMediationVungleAdapter', '7.1.0.2'
    AppLovinMax.dependency 'BidmadPangleAdapter', '5.3.1.0.1'
    AppLovinMax.dependency 'AppLovinMediationByteDanceAdapter', '5.3.1.0.0'
    AppLovinMax.dependency 'BidmadFyberAdapter', '8.2.4.1'
    AppLovinMax.dependency 'AppLovinMediationFyberAdapter', '8.2.4.0'
    AppLovinMax.dependency 'BidmadUnityAdsAdapter', '4.8.0.1'
    AppLovinMax.dependency 'AppLovinMediationUnityAdsAdapter', '4.8.0.1'
    AppLovinMax.dependency 'BidmadIronSourceAdapter', '7.5.0.0.1'
    AppLovinMax.dependency 'AppLovinMediationIronSourceAdapter', '7.5.0.0.0'
    AppLovinMax.dependency 'BidmadGoogleAdMobAdapter', '10.12.0.1'
    AppLovinMax.dependency 'AppLovinMediationGoogleAdapter', '10.12.0.0'
    AppLovinMax.dependency 'BidmadGoogleAdManagerAdapter', '10.12.0.1'
    AppLovinMax.dependency 'BidmadAdColonyAdapter', '4.9.0.1'
    AppLovinMax.dependency 'BidmadAppLovinAdapter', '11.11.3.1'
    AppLovinMax.dependency 'BidmadAtomAdapter', '1.0.0.1'
    AppLovinMax.dependency 'BidmadTeadsAdapter', '5.0.27.1'
    AppLovinMax.dependency 'BidmadPubmaticAdapter', '3.2.0.1'
    AppLovinMax.dependency 'BidmadAdFitAdapter', '3.12.7.1'
    AppLovinMax.dependency 'BidmadADOPCoupangAdapter', '1.0.0.1'
  end

end
