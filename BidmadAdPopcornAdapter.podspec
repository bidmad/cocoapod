Pod::Spec.new do |s|

  s.name             = "BidmadAdPopcornAdapter"
  s.version          = "2.6.5.11.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Ad Popcorn"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAdPopcornAdapter.2.6.5.11.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAdPopcornAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.12.0', '<6.13.0'
  s.dependency 'AdPopcornSSP', '2.6.5'
  s.dependency 'NAMSDK', '7.5.3'
  s.dependency 'NAMSDK/MediationNDA', '7.5.3'
  s.dependency 'AdPopcornCaulyWrapper', '0.0.2'

end
