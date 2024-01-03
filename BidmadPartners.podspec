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
  s.static_framework = true
  s.requires_arc = true
  s.vendored_frameworks = "EmptyProject.xcframework"

  s.subspec 'AdMobBidding' do |admob_bidding|
    admob_bidding.dependency 'BidmadVungleAdapter', '7.1.0.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationVungle', '7.1.0.0'
    admob_bidding.dependency 'BidmadPangleAdapter', '5.3.1.0.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationPangle', '5.3.1.0.0'
    admob_bidding.dependency 'BidmadFyberAdapter', '8.2.4.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationFyber', '8.2.4.0'
    admob_bidding.dependency 'BidmadUnityAdsAdapter', '4.8.0.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationUnity', '4.8.0.0'
    admob_bidding.dependency 'BidmadIronSourceAdapter', '7.5.0.0.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationIronSource', '7.5.0.0.0'
    admob_bidding.dependency 'BidmadAppLovinAdapter', '11.11.3.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationAppLovin', '11.11.3.0'
    admob_bidding.dependency 'BidmadTeadsAdapter', '5.0.27.1'
    admob_bidding.dependency 'BidmadPubmaticAdapter', '3.2.0.1'
    admob_bidding.dependency 'BidmadAtomAdapter', '1.0.0.1'
    admob_bidding.dependency 'BidmadAdFitAdapter', '3.12.7.1'
    admob_bidding.dependency 'BidmadAdColonyAdapter', '4.9.0.1'
    admob_bidding.dependency 'BidmadADOPCoupangAdapter', '1.0.0.1'
    admob_bidding.dependency 'BidmadGoogleAdMobAdapter', '10.12.0.1'
    admob_bidding.dependency 'BidmadGoogleAdManagerAdapter', '10.12.0.1'
  end
  
  s.subspec 'AppLovinMax' do |applovin_max|
    applovin_max.dependency 'BidmadVungleAdapter', '7.1.0.1'
    applovin_max.dependency 'AppLovinMediationVungleAdapter', '7.1.0.2'
    applovin_max.dependency 'BidmadPangleAdapter', '5.3.1.0.1'
    applovin_max.dependency 'AppLovinMediationByteDanceAdapter', '5.3.1.0.0'
    applovin_max.dependency 'BidmadFyberAdapter', '8.2.4.1'
    applovin_max.dependency 'AppLovinMediationFyberAdapter', '8.2.4.0'
    applovin_max.dependency 'BidmadUnityAdsAdapter', '4.8.0.1'
    applovin_max.dependency 'AppLovinMediationUnityAdsAdapter', '4.8.0.1'
    applovin_max.dependency 'BidmadIronSourceAdapter', '7.5.0.0.1'
    applovin_max.dependency 'AppLovinMediationIronSourceAdapter', '7.5.0.0.0'
    applovin_max.dependency 'BidmadGoogleAdMobAdapter', '10.12.0.1'
    applovin_max.dependency 'AppLovinMediationGoogleAdapter', '10.12.0.0'
    applovin_max.dependency 'BidmadGoogleAdManagerAdapter', '10.12.0.1'
    applovin_max.dependency 'BidmadAdColonyAdapter', '4.9.0.1'
    applovin_max.dependency 'BidmadAppLovinAdapter', '11.11.3.1'
    applovin_max.dependency 'BidmadAtomAdapter', '1.0.0.1'
    applovin_max.dependency 'BidmadTeadsAdapter', '5.0.27.1'
    applovin_max.dependency 'BidmadPubmaticAdapter', '3.2.0.1'
    applovin_max.dependency 'BidmadAdFitAdapter', '3.12.7.1'
    applovin_max.dependency 'BidmadADOPCoupangAdapter', '1.0.0.1'
  end

end
