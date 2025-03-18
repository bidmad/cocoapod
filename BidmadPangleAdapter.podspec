Pod::Spec.new do |s|

  s.name             = "BidmadPangleAdapter"
  s.version          = "6.2.0.7.11.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Pangle"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadPangleAdapter.6.2.0.7.11.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadPangleAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.12.0', '<6.13.0'
  s.dependency 'Ads-Global', '6.2.0.7'

end
