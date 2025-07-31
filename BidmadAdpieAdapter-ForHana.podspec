Pod::Spec.new do |s|

  s.name             = "BidmadAdpieAdapter-ForHana"
  s.version          = "1.6.9.12.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Google AdMob"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAdpieAdapter-ForHana.1.6.9.12.0' }
  s.static_framework = false
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAdpieAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK-ForHana', '>=6.13.2', '<6.14.0'
  s.dependency 'AdPieSDK', '1.6.9'

end
