Pod::Spec.new do |s|

  s.name          = "BidmadPartners"
  s.version       = "1.0.9"
  s.platform      = :ios, "14.0"
  s.summary       = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support."
  s.description   = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support. The mediation currently includes AdMob Bidding or AppLovin Max."
  s.homepage      = "https://bidmad.net"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Markus" => "markus@adop.cc" }
  s.source        = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadPartners.1.0.9' }
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc = true
  s.vendored_frameworks = "EmptyProject.xcframework"

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
  end

end
