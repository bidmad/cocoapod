Pod::Spec.new do |s|

  s.name         = "BidmadSDK"
  s.version      = "2.4.0"
  s.summary      = "BidmadSDK, Your Need For ADS Fullfilled."
  s.description  = "This BidmadSDK allows users to communicate with Compass by ADOP."
  s.homepage     = "https://github.com/bidmad/cocoapod.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kenneth" => "kenneth@adop.cc" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '2.3.0' }
  
  s.static_framework = true

  s.vendored_frameworks = "BidmadSDK.framework"
  s.dependency "GoogleMobileAdsMediationUnity"
  s.dependency "GoogleMobileAdsMediationAdColony"
  s.dependency "GoogleMobileAdsMediationAppLovin"
  s.dependency "GoogleMobileAdsMediationChartboost"
  s.dependency "GoogleMobileAdsMediationVungle"
  s.dependency "GoogleMobileAdsMediationMoPub"
  s.dependency "GoogleMobileAdsMediationFacebook"
  s.dependency "GoogleMobileAdsMediationIronSource"

end
