Pod::Spec.new do |s|

  s.name         = "BidmadSDK"
  s.version      = "6.13.2"
  s.platform     = :ios, "13.0"
  s.summary      = "Integrated App Monetization Solution for Mobile Apps by all Publishers"
  s.description  = "BidmadSDK allows users to communicate with Compass by ADOP. Our mediation platform optimizes for the utmost profit."
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'BidmadSDK.6.13.2' }
  s.swift_version = '5.0'
  s.static_framework = false
  s.default_subspec = 'includesGoogleGDPR'

  s.subspec 'includesGoogleGDPR' do |ss|
    ss.vendored_frameworks = "BidmadSDK.xcframework"
    ss.resource_bundles = {'BidmadSDK_Privacy' => ['Resources/PrivacyInfo.xcprivacy']}
    ss.dependency 'BidmadGoogleGDPRAdapter', '6.13.0'
  end

  s.subspec 'excludesGoogleGDPR' do |ss|
    ss.vendored_frameworks = "BidmadSDK.xcframework"
    ss.resource_bundles = {'BidmadSDK_Privacy' => ['Resources/PrivacyInfo.xcprivacy']}
  end


end
