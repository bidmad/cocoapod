Pod::Spec.new do |s|

  s.name         = "OpenBiddingHelper-Dev"
  s.version      = "4.2.0.0-Test2"
  s.platform     = :ios, "11.0"
  s.summary      = "OpenBiddingHelper is for Open Bidding Ads."
  s.description  = "OpenBiddingHelper is for Open Bidding Ads and is a wrapper provided by ADOP."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '4.2.0.0-NRS' }
  
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "OpenBiddingHelper.framework"

  s.dependency 'Google-Mobile-Ads-SDK', '8.13.0'
  s.dependency 'RxSwift', '>=5.0.0', '<6.0.0'
  s.dependency 'RxRelay', '>=5.0.0', '<6.0.0'
  s.dependency 'RxCocoa', '>=5.0.0', '<6.0.0'
  s.dependency 'ADOPUtility', '>=4.2.0.0', '<4.3.0.0'

end
