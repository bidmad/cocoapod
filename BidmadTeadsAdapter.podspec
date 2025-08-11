Pod::Spec.new do |s|

  s.name             = "BidmadTeadsAdapter"
  s.version          = "5.2.0.12.1"
  s.platform         = :ios, "13.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Teads"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadTeadsAdapter.5.2.0.12.1' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadTeadsAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.13.2', '<6.14.0'
  s.dependency 'TeadsSDK', '5.2.0'

end
