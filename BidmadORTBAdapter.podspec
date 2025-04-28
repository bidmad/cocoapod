Pod::Spec.new do |s|

  s.name             = "BidmadORTBAdapter"
  s.version          = "1.0.0.11.1"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for ORTB"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadORTBAdapter.1.0.0.11.1' }
  s.static_framework = false
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadORTBAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.12.2', '<6.13.0'

end
