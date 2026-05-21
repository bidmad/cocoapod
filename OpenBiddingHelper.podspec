Pod::Spec.new do |s|

  s.name         = "OpenBiddingHelper"
  s.version      = "7.0.0"
  s.platform     = :ios, "14.0"
  s.summary      = "OpenBiddingHelper is for Open Bidding Ads."
  s.description  = "OpenBiddingHelper is for Open Bidding Ads and is a wrapper provided by ADOP."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'OpenBiddingHelper.7.0.0' }
  
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "OpenBiddingHelper.xcframework"

  s.dependency 'BidmadSDK', '>=7.0.0', '<7.1.0'

end
