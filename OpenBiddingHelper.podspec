Pod::Spec.new do |s|

  s.name         = "OpenBiddingHelper"
  s.version      = "6.6.1"
  s.platform     = :ios, "12.0"
  s.summary      = "OpenBiddingHelper is for Open Bidding Ads."
  s.description  = "OpenBiddingHelper is for Open Bidding Ads and is a wrapper provided by ADOP."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'OBH.6.6.1' }
  
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "OpenBiddingHelper.xcframework"

  s.dependency 'PromisesObjC', '2.4.0'
  s.dependency 'ADOPUtility', '>=6.6.0', '<6.7.0'

end
