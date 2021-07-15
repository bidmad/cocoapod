Pod::Spec.new do |s|

  s.name         = "BidmadSDK"
  s.version      = "2.8.0"
  s.platform     = :ios, "11.0"
  s.summary      = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description  = "This BidmadSDK allows users to communicate with Compass by ADOP. Our mediation platform optimizes for the utmost profit."
  s.homepage     = "https://github.com/bidmad/cocoapod.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kenneth" => "kenneth@adop.cc" }
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '2.8.0' }
  s.resource_bundles = {
    'bidmad_asset' => ['Assets/*']
  }
  s.default_subspec = 'WithAdFit'
  
  s.static_framework = true
  s.requires_arc     = true

  s.vendored_frameworks = "BidmadSDK.framework"

  s.dependency 'GoogleMobileAdsMediationAppLovin', '10.0.1.0'
  s.dependency 'GoogleMobileAdsMediationFacebook', '6.3.1.0'
  s.dependency 'GoogleMobileAdsMediationAdColony', '4.6.0.0'
  s.dependency 'GoogleMobileAdsMediationUnity', '3.6.2.0'
  s.dependency 'FBAudienceNetwork', '6.3.0'
  s.dependency 'FBSDKCoreKit', '9.1.0'
  s.dependency 'Google-Mobile-Ads-SDK', '8.3.0'
  s.dependency 'TapjoySDK', '12.8.0'
  s.dependency 'UnityAds', '3.6.2'
  s.dependency 'FBAudienceNetwork', '6.3.1'
  s.dependency 'Flutter'
  s.dependency 'Ads-Global', '3.4.2.8'

  s.subspec 'WithAdFit' do |withadfit|
    withadfit.dependency 'AdFitSDK', '3.7.0'
  end
  
  s.subspec 'WithoutAdFit' do |withoutadfit|
    withoutadfit.platform = :ios, "10.0"
    withoutadfit.vendored_frameworks = "BidmadSDK.framework"
    withoutadfit.resource_bundles = {
      'bidmad_asset' => ['Assets/*']
    }
  end

end
