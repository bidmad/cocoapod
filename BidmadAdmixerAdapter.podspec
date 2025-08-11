Pod::Spec.new do |s|

  s.name             = "BidmadAdmixerAdapter"
  s.version          = "2.0.2.12.1"
  s.platform         = :ios, "13.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for AdFit"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAdmixerAdapter.2.0.2.12.1' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAdmixerAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'AdMixerMediation', '2.0.2'
  s.dependency 'BidmadSDK', '>=6.13.2', '<6.14.0'

end
