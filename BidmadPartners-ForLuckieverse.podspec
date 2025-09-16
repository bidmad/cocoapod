Pod::Spec.new do |s|

  s.name          = "BidmadPartners-ForLuckieverse"
  s.version       = "1.0.10"
  s.platform      = :ios, "13.0"
  s.summary       = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support."
  s.description   = "BidmadPartners library is a collection of partnered adnetworks with third-party mediation support. The mediation currently includes AdMob Bidding or AppLovin Max."
  s.homepage      = "https://bidmad.net"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Markus" => "markus@adop.cc" }
  s.source        = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'PARTNER-ForLuckieverse.1.0.8' }
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc = true
  s.vendored_frameworks = "EmptyProject.xcframework"

  s.subspec 'AdMobBidding' do |admob_bidding|
    admob_bidding.dependency 'GoogleMobileAdsMediationPangle', '7.4.1.0.0'
    admob_bidding.dependency 'GoogleMobileAdsMediationAppLovin', '13.3.0.0'
  end

end
