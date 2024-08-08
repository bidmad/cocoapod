Pod::Spec.new do |s|
    s.name         = "AdPopcornCaulyWrapper"
    s.version      = "0.0.2"
    s.summary      = "This repository is built to wrap Cauly SDK."
    s.description  = "This repository is built to wrap Cauly SDK. Use this repository for AdPopcorn adapter support."
    s.homepage     = "https://www.cauly.net/index.html#/"
    s.license = { :type => 'MIT', :text => 'LICENSE' }
    s.author             = { "Markus" => "markus@adop.cc" }
    s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => 'AdPopcornCaulyWrapper.0.0.2' }
    s.vendored_frameworks = "Cauly.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '12.0'

    s.frameworks = [
        'AVKit',
        'UIKit',
        'Foundation',
        'CoreGraphics',
        'QuartzCore',
        'SystemConfiguration',
        'MediaPlayer',
        'CFNetwork',
        'MessageUI',
        'EventKit',
        'AdSupport'
    ]

    s.pod_target_xcconfig = { 
        'ENABLE_BITCODE' => 'NO', 
        'OTHER_LDFLAGS' => '-ObjC',
    }

end