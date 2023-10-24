Pod::Spec.new do |s|

  s.name             = "BidmadFyberAdapter"
  s.version          = "8.2.4.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Vungle"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadFyberAdapter.8.2.4.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadFyberAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'Fyber_Marketplace_SDK', '8.2.4'
  s.dependency 'GoogleMobileAdsMediationFyber', '8.2.4.0'
  s.dependency 'ADOPUtility', '>=6.4.0', '<6.5.0'

end
