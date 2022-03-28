Pod::Spec.new do |s|

  s.name         = "ADOPUtility"
  s.version      = "4.2.0.0"
  s.platform     = :ios, "11.0"
  s.summary      = "ADOP Utility is a utility collection framework for ADOP Libraries."
  s.description  = "ADOP Uitlity is a utility collection framework for ADOP Libraries, including BidmadSDK, BidmadAdapters, and OpenBiddingHelper"
  s.homepage     = "https://bidmad.net"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Markus" => "markus@adop.cc" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => 'https://github.com/bidmad/cocoapod.git', :tag => '4.2.0.0' }
  
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = "ADOPUtility.framework"

end
