Pod::Spec.new do |s|

  s.name             = "BidmadPremiumAdsGoogleAdapter"
  s.version          = "1.0.6.14.0"
  s.platform         = :ios, "14.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK privacy-manifest carrier for PremiumAdsGoogleAdapter. Ships the PrivacyInfo.xcprivacy added in PremiumAdsGoogleAdapter 1.0.8 while pinning the 1.0.6 binary, which does not statically embed the full Google-Mobile-Ads-SDK."
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadPremiumAdsGoogleAdapter.1.0.6.14.0' }
  s.static_framework = false
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadPremiumAdsGoogleAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'BidmadSDK', '>=7.0.0', '<7.1.0'
  s.dependency 'PremiumAdsGoogleAdapter', '1.0.6'

end
