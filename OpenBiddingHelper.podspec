Pod::Spec.new do |s|

  s.name         = "OpenBiddingHelper"
  s.version      = "1.2.1"
  s.summary      = "OpenBiddingHelper is for Open Bidding Ads."
  s.description  = "OpenBiddingHelper is for Open Bidding Ads and is a wrapper provided by ADOP."
  s.homepage     = "https://github.com/bidmad/cocoapod.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kenneth" => "kenneth@adop.cc" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '2.6.3' }
  
  s.static_framework = true
  s.requires_arc     = true

  s.vendored_frameworks = "OpenBiddingHelper.framework"

  s.dependency 'BidmadSDK'

end
