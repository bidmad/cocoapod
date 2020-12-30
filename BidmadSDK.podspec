Pod::Spec.new do |s|

  s.name         = "BidmadSDKA"
  s.version      = "2.2.0"
  s.summary      = "BidmadSDK is a sample Project for exercising uploading Pod Compiled Project"
  s.description  = <<-DESC
  NiceLoggerEx is a sample Project for exercising uploading Pod Compiled Project and Pretty Small project
                   DESC

  s.homepage     = "http://www.adop.cc"
  s.license      = { :type => "MIT", :file => "bidmad/cocoapod/license" }
  s.author             = { "Kenneth" => "kenneth@adop.cc" }
  s.ios.deployment_target = '10.0'
  

  s.source            = { :http => 'https://github.com/bidmad/cocoapod/archive/master.zip' }
  s.platform          = :ios, "10.0"
  
  s.static_framework = true

  s.ios.vendored_frameworks = "bidmad/cocoapod/BidmadSDK.framework"
  s.ios.dependency "GoogleMobileAdsMediationUnity"
  s.ios.dependency "GoogleMobileAdsMediationAdColony"
  s.ios.dependency "GoogleMobileAdsMediationAppLovin"
  s.ios.dependency "GoogleMobileAdsMediationChartboost"
  s.ios.dependency "GoogleMobileAdsMediationVungle"
  s.ios.dependency "GoogleMobileAdsMediationMoPub"
  s.ios.dependency "GoogleMobileAdsMediationFacebook"
  s.ios.dependency "GoogleMobileAdsMediationIronSource"

  s.exclude_files = "Classes/Exclude"
end
