Pod::Spec.new do |s|

  s.name          = "BidmadPartners"
  s.version       = "1.0.3"
  s.platform      = :ios, "12.0"
  s.summary       = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support."
  s.description   = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support. The mediation currently includes AdMob Bidding or AppLovin Max."
  s.homepage      = "https://bidmad.net"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Markus" => "markus@adop.cc" }
  s.source        = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'PARTNER.1.0.3' }
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc = true
  s.vendored_frameworks = "EmptyProject.xcframework"

  s.subspec 'AdMobBidding' do |admob_bidding|
    admob_bidding.dependency 'GoogleMobileAdsMediationVungle', '7.2.2.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationPangle', '5.8.0.7.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationFyber', '8.2.6.1'
    admob_bidding.dependency 'GoogleMobileAdsMediationUnity', '4.9.3.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationIronSource', '7.8.0.0.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationAppLovin', '12.2.1.0'
  end
  
  s.subspec 'AppLovinMax' do |applovin_max|
    applovin_max.dependency 'AppLovinMediationVungleAdapter', '7.2.2.0'
    applovin_max.dependency 'AppLovinMediationByteDanceAdapter', '5.8.0.7.0'
    applovin_max.dependency 'AppLovinMediationFyberAdapter', '8.2.6.0'
    applovin_max.dependency 'AppLovinMediationUnityAdsAdapter', '4.9.3.0'
    applovin_max.dependency 'AppLovinMediationIronSourceAdapter', '7.8.0.0.1'
    applovin_max.dependency 'AppLovinMediationGoogleAdapter', '11.2.0.0'
  end

end
