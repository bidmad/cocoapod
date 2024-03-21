Pod::Spec.new do |s|

  s.name             = "BidmadVungleAdapter"
  s.version          = "7.2.2.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Vungle"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadVungleAdapter.7.2.2.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadVungleAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.6.0', '<6.7.0'
  s.dependency 'VungleAds', '7.2.2'
  s.dependency 'ADOPUtility', '>=6.6.0', '<6.7.0'

end
