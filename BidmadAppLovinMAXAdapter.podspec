Pod::Spec.new do |s|

  s.name             = "BidmadAppLovinMAXAdapter"
  s.version          = "13.6.2.14.0"
  s.platform         = :ios, "14.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for AppLovin MAX"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAppLovinMAXAdapter.13.6.2.14.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAppLovinMAXAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=7.0.0', '<7.1.0'
  s.dependency 'AppLovinSDK', '13.6.2'

end
