Pod::Spec.new do |s|

  s.name         = "BidmadSDK"
  s.version      = "6.3.1"
  s.platform     = :ios, "12.0"
  s.summary      = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description  = "BidmadSDK allows users to communicate with Compass by ADOP. Our mediation platform optimizes for the utmost profit."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'SDK.6.3.1' }
  s.resource_bundles = {
    'bidmad_asset' => ['Assets/*']
  }
    
  s.swift_version = '5.0'
  s.default_subspec = 'ForNative'
  
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadSDK.xcframework"

  s.dependency 'Google-Mobile-Ads-SDK', '10.8.0'
  s.dependency 'ADOPUtility', '>=6.3.1', '<6.4.0'

  # AdColony
  s.dependency 'GoogleMobileAdsMediationAdColony', '4.9.0.2'
  s.dependency 'AdColony', '4.9.0'
  
  # AppLovin
  s.dependency 'GoogleMobileAdsMediationAppLovin', '11.10.1.0'
  s.dependency 'AppLovinSDK', '11.10.1'
  
  # Pangle
  s.dependency 'GoogleMobileAdsMediationPangle', '5.3.1.0.0'
  s.dependency 'Ads-Global', '5.3.1.0'
  
  # Fyber
  s.dependency 'GoogleMobileAdsMediationFyber', '8.2.3.0'
  s.dependency 'Fyber_Marketplace_SDK', '8.2.3'
  
  # IronSource
  s.dependency 'GoogleMobileAdsMediationIronSource', '7.3.1.0.0'
  s.dependency 'IronSourceSDK', '7.3.1.0'
  
  # Meta
  s.dependency 'GoogleMobileAdsMediationFacebook', '>=6.9.0.1', '<=6.12.0.2'
  
  # UnityAds
  s.dependency 'GoogleMobileAdsMediationUnity', '4.8.0.0'
  s.dependency 'UnityAds', '4.8.0'
  
  # Vungle
  s.dependency 'GoogleMobileAdsMediationVungle', '6.12.3.0'
  s.dependency 'VungleSDK-iOS', '6.12.3'
  
  # PubMatic
  s.dependency 'OpenWrapHandlerDFP', '4.0.0'
  s.dependency 'OpenWrapSDK', '3.1.0'
  
  s.subspec 'ForNative' do |forNative|
  end
  
  s.subspec 'ForFlutter' do |forflutter|
    forflutter.platform = :ios, "12.0"
    forflutter.vendored_frameworks = "BidmadSDK.xcframework"
    forflutter.resource_bundles = {
      'bidmad_asset' => ['Assets/*']
    }
    forflutter.dependency 'Flutter'
  end

end
