Pod::Spec.new do |s|

  s.name             = "BidmadPangleAdapter-ForLuckieverse"
  s.version          = "7.4.1.0.12.1"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Pangle"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadPangleAdapter-ForLuckieverse.7.1.1.1.12.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadPangleAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK-ForLuckieverse', '>=6.13.2', '<6.14.0'
  s.dependency 'Ads-Global', '7.4.1.0'

end
