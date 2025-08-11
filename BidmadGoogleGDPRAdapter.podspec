Pod::Spec.new do |s|

  s.name             = "BidmadGoogleGDPRAdapter"
  s.version          = "6.13.0"
  s.platform         = :ios, "13.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Adapter for Google GDPR"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadGoogleGDPRAdapter.6.13.0' }
  s.static_framework = false
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadGoogleGDPRAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.13.0', '<6.14.0'

end
