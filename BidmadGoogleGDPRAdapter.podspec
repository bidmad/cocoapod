Pod::Spec.new do |s|

  s.name             = "BidmadGoogleGDPRAdapter"
  s.version          = "7.0.1"
  s.platform         = :ios, "14.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Adapter for Google GDPR"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadGoogleGDPRAdapter.7.0.1' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadGoogleGDPRAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=7.0.1', '<7.1.0'
  s.dependency 'GoogleUserMessagingPlatform', '3.1.0'

end
