Pod::Spec.new do |s|

  s.name             = "BidmadGoogleAdManagerAdapter"
  s.version          = "10.12.0.1"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Google AdMob"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadGoogleAdManagerAdapter.10.12.0.1' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadGoogleAdManagerAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'Google-Mobile-Ads-SDK', '10.12.0'
  s.dependency 'ADOPUtility', '>=6.5.0', '<6.6.0'

end
