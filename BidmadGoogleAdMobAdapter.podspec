Pod::Spec.new do |s|

  s.name             = "BidmadGoogleAdMobAdapter"
  s.version          = "11.2.0.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for Google AdMob"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadGoogleAdMobAdapter.11.2.0.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadGoogleAdMobAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=6.6.0', '<6.7.0'
  # s.dependency 'GoogleMobileAdsMediationFacebook', '6.15.0.0' -> FacebookSDK currently does not support Google Mobile Ads v11.2.0
  s.dependency 'Google-Mobile-Ads-SDK', '11.2.0'
  s.dependency 'ADOPUtility', '>=6.6.0', '<6.7.0'

end
