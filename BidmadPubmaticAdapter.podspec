Pod::Spec.new do |s|

  s.name             = "BidmadPubmaticAdapter"
  s.version          = "3.2.0.7"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for PubMatic"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadPubmaticAdapter.3.2.0.7' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadPubmaticAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.8.0', '<6.9.0'
  s.dependency 'OpenWrapSDK', '3.2.0'
  s.dependency 'OpenWrapHandlerDFP', '4.0.0'

end
