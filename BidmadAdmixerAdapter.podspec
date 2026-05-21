Pod::Spec.new do |s|

  s.name             = "BidmadAdmixerAdapter"
  s.version          = "2.3.2.14.0"
  s.platform         = :ios, "14.0"
  s.summary          = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description      = "BidmadSDK Mediation Adapter for AdFit"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadAdmixerAdapter.2.3.2.14.0' }
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "BidmadAdmixerAdapter.xcframework"
  s.swift_version = '5.0'

  s.dependency 'AdMixerMediation', '2.3.2'
  s.dependency 'AdMixer', '1.1.6'
  s.dependency 'BidmadSDK', '>=7.0.0', '<7.1.0'

end
