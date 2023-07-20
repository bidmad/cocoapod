Pod::Spec.new do |s|

  s.name         = "OpenBiddingHelper"
  s.version      = "6.3.1"
  s.platform     = :ios, "11.0"
  s.summary      = "OpenBiddingHelper is for Open Bidding Ads."
  s.description  = "OpenBiddingHelper is for Open Bidding Ads and is a wrapper provided by ADOP."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'OBH.6.3.1' }
  
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "OpenBiddingHelper.xcframework"

  s.dependency 'Google-Mobile-Ads-SDK', '9.14.0'
  s.dependency 'ADOPUtility', '>=6.3.0', '<6.4.0'

end
