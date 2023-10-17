Pod::Spec.new do |s|

  s.name             = "BidmadUnityAdsAdapter"
  s.version          = "4.8.0.0"
  s.platform         = :ios, "12.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for UnityAds"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadUnityAdsAdapter.4.8.0.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadUnityAdsAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'UnityAds', '4.8.0'
  s.dependency 'GoogleMobileAdsMediationUnity', '4.8.0.0'

end
