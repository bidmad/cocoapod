Pod::Spec.new do |s|

  s.name             = "BidmadUnityAdsAdapter-ForLuckieverse"
  s.version          = "4.16.0.12.1"
  s.platform         = :ios, "13.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for UnityAds"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadUnityAdsAdapter-ForLuckieverse.4.9.2.12.1' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadUnityAdsAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK-ForLuckieverse', '>=6.13.3', '<6.14.0'
  s.dependency 'UnityAds', '4.16.0'

end
