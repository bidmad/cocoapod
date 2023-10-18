Pod::Spec.new do |s|

  s.name             = "BidmadAtomAdapter"
  s.version          = "1.0.0.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Atom"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAtomAdapter.1.0.0.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAtomAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'ADOPUtility', '>=7.0.0', '<7.1.0'

end