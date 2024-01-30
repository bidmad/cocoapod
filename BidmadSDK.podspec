Pod::Spec.new do |s|

  s.name         = "BidmadSDK"
  s.version      = "6.6.0"
  s.platform     = :ios, "12.0"
  s.summary      = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description  = "BidmadSDK allows users to communicate with Compass by ADOP. Our mediation platform optimizes for the utmost profit."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'SDK.6.6.0' }
    
  s.swift_version = '5.0'
  s.default_subspec = 'ForNative'
  
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadSDK.xcframework"

  s.dependency 'PromisesObjC', '2.3.1'
  s.dependency 'GoogleUserMessagingPlatform', '2.1.0'
  s.dependency 'ADOPUtility', '>=6.6.0', '<6.7.0'
  
  s.subspec 'ForNative' do |forNative|
  end
  
  s.subspec 'ForFlutter' do |forflutter|
    forflutter.platform = :ios, "12.0"
    forflutter.vendored_frameworks = "BidmadSDK.xcframework"
    forflutter.dependency 'Flutter'
  end

end
