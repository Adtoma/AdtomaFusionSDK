Pod::Spec.new do |s|
  s.name =                "AdtomaFusionSDK"
  s.version               = "1.8.0"
  s.summary               = "AdtomaFusionSDK is a library that helps displaying ads from the Adtoma networn within iOS applications"
  s.description           = <<-DESC
                          The Adtoma Fusion SDK for iOS is an iOS framework (library) that allows iOS application developers to display ads served by the Adtoma Fusion ad management system in their applications. The SDK is MRAID compatible (see [Mobile Rich Media Ad Interface Definitions (MRAID)](http://www.iab.net/mraid)).
                          DESC
  s.homepage              = "http://www.adtoma.com"
  s.license               = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.license               = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author                = { "Adtoma AB" => "support@adtoma.com" }
  s.platform              = :ios
  s.source                = { :git => "https://github.com/mysza/AdtomaFusionSDK.git", :branch => 'master' }
  s.requires_arc          = true
  s.source_files          = 'Headers/*.h'
  s.vendored_library      = 'libAdtomaFusionSDK.a'
  s.public_header_files   = 'Headers/*.h'
  s.resources             = 'libAdtomaFusionSDK.bundle'
  s.frameworks            = 'CoreFoundation', 'UIKit', 'Foundation', 'EventKit', 'MessageUI', 'MobileCoreServices', 'CoreTelephony', 'MediaPlayer', 'CoreLocation'
end