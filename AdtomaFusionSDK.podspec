Pod::Spec.new do |s|
  s.name =                "AdtomaFusionSDK"
  s.version               = "1.8.0"
  s.summary               = "AdtomaFusionSDK is a library that helps displaying ads from the Adtoma networn within iOS applications"
  s.description           = <<-DESC
                          The Adtoma Fusion SDK for iOS is an iOS framework (library) that allows iOS application developers to display ads served by the Adtoma Fusion ad management system in their applications. The SDK is MRAID compatible (see [Mobile Rich Media Ad Interface Definitions (MRAID)](http://www.iab.net/mraid)).
                          DESC
  s.homepage              = "http://www.adtoma.com"
  s.license               = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author                = { "Adtoma AB" => "support@adtoma.com" }
  s.platform              = :ios
  s.source                = { :git => "https://github.com/mysza/AdtomaFusionSDK.git", :branch => 'master' }
  s.requires_arc          = true
  s.source_files          = 'AdtomaFusionSDKHeaders/*.h'
  s.public_header_files   = 'AdtomaFusionSDKHeaders/*.h'
  s.vendored_libraries    = 'AdtomaFusionSDK.a'
  s.preserve_paths        = 'AdtomaFusionSDK.a'
  s.resources             = 'AdtomaFusionSDK.bundle'
  s.frameworks            = 'CoreFoundation', 'CoreGraphics', 'UIKit', 'Foundation'
  s.dependency            'PureLayout', '~> 3.0'
  s.dependency            'UIAlertView+Blocks', '~> 0.9'
  s.dependency            'TOWebViewController', '~> 2.2'
end
