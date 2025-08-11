Pod::Spec.new do |s|

  s.name             = "BidmadEmpty"
  s.version          = "1.0.0"
  s.platform         = :ios, "13.0"
  s.summary          = "Empty dependency for BidmadSDK when excluding Google GDPR"
  s.description      = "BidmadEmpty provides an empty framework dependency for BidmadSDK when Google GDPR functionality is not required"
  s.homepage         = "https://bidmad.net"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Markus" => "markus@adop.cc" }
  s.source           = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadEmpty.1.0.0' }
  s.static_framework = false
  s.requires_arc     = true
  s.vendored_frameworks = "EmptyProject2.xcframework"
  s.swift_version = '5.0'

end
