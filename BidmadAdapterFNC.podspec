Pod::Spec.new do |s|

  s.name         = "BidmadAdapterFNC"
  s.version      = "4.1.1.0"
  s.platform     = :ios, "11.0"
  s.summary      = "BidmadAdapterFC is an ad adapter with support for Facebook Audience Network, Tapjoy, AdFit, Pangle, Fyber, and ADOP ads"
  s.description  = "BidmadAdapterFC is an ad adapter with support for Facebook Audience Network, Tapjoy, AdFit, Pangle, Fyber, and ADOP ads. Please setup BidmadSDK (4.1.0.0 or higher) first."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '4.1.1.0' }
  s.default_subspec = 'ForNative'
  
  s.static_framework = true
  s.requires_arc     = true

  s.vendored_frameworks = "BidmadAdapterFNC.framework"

  s.dependency 'Ads-Global', '3.8.1.0'
  s.dependency 'TapjoySDK', '12.8.1'
  s.dependency 'Fyber_Marketplace_SDK', '8.1.2'
  s.dependency 'GoogleMobileAdsMediationFyber', '8.1.2.0'
  s.dependency 'GoogleMobileAdsMediationFacebook', '6.3.1.0'
  
  s.subspec 'ForNative' do |forNative|
    forNative.dependency 'AdFitSDK', '3.7.0'
  end
  
  s.subspec 'ForGame' do |forgame|
    forgame.platform = :ios, "10.0"
    forgame.vendored_frameworks = "BidmadAdapterFNC.framework"
  end

end
