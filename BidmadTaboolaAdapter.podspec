Pod::Spec.new do |s|

  s.name             = "BidmadTaboolaAdapter"
  s.version          = "3.8.33.10.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Taboola"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadTaboolaAdapter.3.8.33.10.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadTaboolaAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.11.1', '<6.12.0'
  s.dependency 'TaboolaSDK', '3.8.33'

end
