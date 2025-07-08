Pod::Spec.new do |s|

  s.name             = "BidmadAppLovinAdapter"
  s.version          = "12.0.0.11.1"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for AppLovin"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAppLovinAdapter.12.0.0.11.1' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAppLovinAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.12.0', '<6.13.0'
  s.dependency 'AppLovinSDK', '12.0.0'

end
