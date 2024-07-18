Pod::Spec.new do |s|

  s.name             = "BidmadTeadsAdapter"
  s.version          = "5.0.27.7"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Teads"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadTeadsAdapter.5.0.27.7' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadTeadsAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.8.0', '<6.9.0'
  s.dependency 'TeadsSDK', '5.0.27'

end
