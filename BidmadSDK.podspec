Pod::Spec.new do |s|

  s.name         = "BidmadSDK"
  s.version      = "2.7.1-test7"
  s.summary      = "BidmadSDK, Your Need For ADS Fullfilled."
  s.description  = "This BidmadSDK allows users to communicate with Compass by ADOP."
  s.homepage     = "https://github.com/bidmad/cocoapod.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kenneth" => "kenneth@adop.cc" }
  s.platform     = :ios, "9.0"
#  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '2.6.0' }
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '2.7.0-test3' }
#  s.source            = { :http => 'file:' + __dir__ + '/BidmadSDK.framework.zip' }
  s.resource_bundles = {
    'bidmad_asset' => ['Assets/bidmad_asset.bundle']
  }
  
  s.static_framework = true
  s.requires_arc     = true

  s.vendored_frameworks = "BidmadSDK.framework"

  s.dependency 'GoogleMobileAdsMediationAppLovin', '10.0.1.0'
  s.dependency 'GoogleMobileAdsMediationFacebook', '6.3.0.0'
  s.dependency 'GoogleMobileAdsMediationAdColony', '4.5.0.0'
  s.dependency 'FBAudienceNetwork', '6.3.0'
  s.dependency 'FBSDKCoreKit', '9.1.0'
  s.dependency 'Google-Mobile-Ads-SDK', '8.3.0'
  s.dependency 'TapjoySDK', '12.8.0'
  s.dependency 'UnityAds', '3.7.0'
  s.dependency 'Flutter', '2.0.0'

end
