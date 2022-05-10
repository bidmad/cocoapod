Pod::Spec.new do |s|

  s.name         = "BidmadAdapterFNC"
  s.version      = "4.3.0.0"
  s.platform     = :ios, "11.0"
  s.summary      = "BidmadAdapterFNC is an ad adapter with support for Facebook Audience Network, Tapjoy, AdFit, Pangle, Fyber, and ADOP ads"
  s.description  = "BidmadAdapterFNC is an ad adapter with support for Facebook Audience Network, Tapjoy, AdFit, Pangle, Fyber, and ADOP ads. Please setup BidmadSDK (4.1.0.0 or higher) first."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '4.3.0.0' }
  s.default_subspec = 'ForNative'
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc     = true

  s.vendored_frameworks = "BidmadAdapterFNC.framework"

  s.dependency 'AppLovinMediationFyberAdapter', '8.1.2.0'
  s.dependency 'AppLovinMediationMintegralAdapter', '7.1.0.0.1'
  s.dependency 'GoogleMobileAdsMediationFyber', '8.1.2.0'
  s.dependency 'Ads-Global', '3.8.1.0'
  s.dependency 'TapjoySDK', '>=12.8.0', '<12.9.0'
  s.dependency 'Fyber_Marketplace_SDK', '8.1.2'
  s.dependency 'ADOPUtility', '>=4.3.0.0', '<4.3.0.0'
  
  s.subspec 'ForNative' do |forNative|
    forNative.dependency 'AppLovinMediationFacebookAdapter', '6.3.1.0'
    forNative.dependency 'GoogleMobileAdsMediationFacebook', '6.3.1.0'
    forNative.dependency 'AppLovinMediationMyTargetAdapter', '5.15.1.0'
    forNative.dependency 'AdFitSDK', '3.7.0'
  end
  
  s.subspec 'ForGame' do |forgame|
    forgame.dependency 'AppLovinMediationFacebookAdapter', '6.3.1.0'
    forgame.dependency 'GoogleMobileAdsMediationFacebook', '6.3.1.0'
    forgame.dependency 'AppLovinMediationMyTargetAdapter', '5.15.1.0'
    forgame.platform = :ios, "11.0"
    forgame.vendored_frameworks = "BidmadAdapterFNC.framework"
  end
  
  s.subspec 'Xcode12Compatibility' do |xcode12Compatibility|
    xcode12Compatibility.dependency 'AppLovinMediationFacebookAdapter', '6.3.1.0'
    xcode12Compatibility.dependency 'GoogleMobileAdsMediationFacebook', '6.3.1.0'
    xcode12Compatibility.vendored_frameworks = "BidmadAdapterFNC.framework"
  end

  s.subspec 'ExcludeFacebook' do |forgame|
    forgame.dependency 'AppLovinMediationMyTargetAdapter', '5.15.1.0'
    forgame.platform = :ios, "11.0"
    forgame.vendored_frameworks = "BidmadAdapterFNC.framework"
  end
  
  s.subspec 'ExcludeFacebookAndXcode12Compat' do |forgame|
    forgame.platform = :ios, "11.0"
    forgame.vendored_frameworks = "BidmadAdapterFNC.framework"
  end

end
