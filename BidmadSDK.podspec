Pod::Spec.new do |s|

  s.name         = "BidmadSDK"
  s.version      = "2.4.2"
  s.summary      = "BidmadSDK, Your Need For ADS Fullfilled."
  s.description  = "This BidmadSDK allows users to communicate with Compass by ADOP."
  s.homepage     = "https://github.com/bidmad/cocoapod.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kenneth" => "kenneth@adop.cc" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '2.4.2' }
  
  s.static_framework = true
  s.requires_arc     = true

  s.vendored_frameworks = "BidmadSDK.framework"

  s.dependency 'GoogleMobileAdsMediationAppLovin'
  s.dependency 'GoogleMobileAdsMediationFacebook'
  s.dependency 'GoogleMobileAdsMediationAdColony'
  s.dependency 'FBAudienceNetwork'
  s.dependency 'FBSDKCoreKit'
  s.dependency 'Google-Mobile-Ads-SDK'
  s.dependency 'PersonalizedAdConsent'
  s.dependency 'TapjoySDK'
  s.dependency 'UnityAds'
  s.dependency 'GoogleMobileAdsMediationUnity'
  s.dependency 'Flutter', '2.0'

end
