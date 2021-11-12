Pod::Spec.new do |s|

  s.name         = "BidmadAdapterFNC"
  s.version      = "4.0.0.0"
  s.platform     = :ios, "11.0"
  s.summary      = "BidmadAdapterFC is an ad adapter with support for Tapjoy, AdFit, and Pangle."
  s.description  = "BidmadAdapterFC is an ad adapter with support for Tapjoy, AdFit, and Pangle. Please setup BidmadSDK (4.0.0.0 or higher) first."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '4.0.0.0' }
  s.default_subspec = 'ForNative'
  
  s.static_framework = true
  s.requires_arc     = true

  s.vendored_frameworks = "BidmadAdapterFNC.framework"

  s.dependency 'Ads-Global', '3.8.1.0'
  s.dependency 'TapjoySDK', '12.8.1'
  
  s.subspec 'ForNative' do |forNative|
    forNative.dependency 'AdFitSDK', '3.7.0'
  end
  
  s.subspec 'ForGame' do |forgame|
    forgame.platform = :ios, "10.0"
    forgame.vendored_frameworks = "BidmadAdapterFNC.framework"
    forgame.resource_bundles = {
      'bidmad_asset' => ['Assets/*']
    }
  end

end
