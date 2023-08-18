Pod::Spec.new do |s|

  s.name         = "BidmadAdapterDynamic"
  s.version      = "6.3.1"
  s.platform     = :ios, "11.0"
  s.summary      = "BidmadAdapterFNC is an ad adapter with support for Facebook Audience Network, AdFit, Pangle, Fyber, and ADOP ads"
  s.description  = "BidmadAdapterFNC is an ad adapter with support for Facebook Audience Network, AdFit, Pangle, Fyber, and ADOP ads. Please setup BidmadSDK (4.1.0.0 or higher) first."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'DYN.6.3.1' }
  s.swift_version = '5.0'
  s.static_framework = false
  s.requires_arc     = true

  s.vendored_frameworks = "BidmadAdapterDynamic.xcframework"
  
  s.dependency 'ADOPUtility', '>=6.3.1', '<6.4.0'

  # AdFit
  s.dependency 'AdFitSDK', '3.7.0'
  
  # Mobon
  # s.dependency 'MobonSDK', '0.6.17'
  # Mobon is a static framework, and it is included in BidmadAdapterDynamic
  
  # Teads
  s.dependency 'TeadsSDK', '5.0.27'

end
