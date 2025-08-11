Pod::Spec.new do |s|

  s.name             = "BidmadAdFitAdapter"
  s.version          = "3.12.7.12.1"
  s.platform         = :ios, "13.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for AdFit"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAdFitAdapter.3.12.7.12.1' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAdFitAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.13.2', '<6.14.0'
  s.dependency 'AdFitSDK', '3.12.7'

end
