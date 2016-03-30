# Adtoma Fusion iOS SDK

Adtoma Fusion iOS SDK contains an iOS library that allows application developers displaying Adtoma Fusion ads in their applications. The library is distributed as a static library to be linked with the target application; the library is universal - works both with iOS simulator and iOS devices.

The SDK relies on MRAID and Adtoma Fusion javascript implementation.

To learn more about MRAID, please visit [Mobile Rich Media Ad Interface Definitions (MRAID)](http://www.iab.com/guidelines/mobile-rich-media-ad-interface-definitions-mraid/) on [IAB](http://www.iab.com/) website.

## Installation

### Using [CocoaPods](http://cocoapods.org)

1. Add the pod `AdtomaFusionSDK` to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html).

```ruby
pod 'AdtomaFusionSDK'
```

1. Run `pod install` from Terminal, then open your app's `.xcworkspace` file to launch Xcode.
1. Import the `AdtomaFusionSDK.h` umbrella header.
* With `use_frameworks!` in your Podfile
* Swift: `import AdtomaFusionSDK`
* Objective-C: `#import <AdtomaFusionSDK/AdtomaFusionSDK.h>` (or with Modules enabled: `@import AdtomaFusionSDK;`)
* Without `use_frameworks!` in your Podfile
* Swift: Add `#import "AdtomaFusionSDK.h"` to your bridging header.
* Objective-C: `#import "AdtomaFusionSDK.h"`

That's it - you can now display ads in your app like a pro!


### Manual

Just like any other library:
* add libAdtomaFusionSDK.a as a library to link against
* add path to AdtomaFusionSDK/Headers
* add libAdtomaFusionSDK.bundle to the application bundles
* import the `AdtomaFusionSDK.h` umbrella header

## Sample usage

The following code presents sample usage of the AFAdView in the application. This code is an implementation of the UIViewController's viewDidLoad methd.

```objectivec
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.fusionAdView = [[AFAdView alloc] init];
    [self.view addSubview:self.fusionAdView];

    self.fusionAdView.translatesAutoresizingMaskIntoConstraints = NO;
    self.fusionAdView.delegate = self;
    self.fusionAdView.adServerAddress = @"fusion.expressen.se";
    self.fusionAdView.adMediaZone = @"exp.mobil-expressen.mobilsajt.gt.etta";
    self.fusionAdView.adLayout = @"hyb_etta";
    self.fusionAdView.adSpaceName = @"m_topp";

    NSString *test = @"val1 val2 val3";
    NSArray *strings = [test componentsSeparatedByString:@" "];
    [self.fusionAdView setFusionParameter:@"stringParam" withValues:strings reloadIfNeeded:YES];
    NSArray *ints = @[@1, @2, @3];
    [self.fusionAdView setFusionParameter:@"intParam" withValues:ints reloadIfNeeded:YES];
    [self.fusionAdView setFusionParameter:@"singleParam" withValue:@"testValue" reloadIfNeeded:YES];

    // load ad
    [_fusionAdView loadAd];
}
```

For detailed information of the AFAdView and AFAdViewDelegate please see class and protocol documentation.

## I need help!

For further assistance, place contact [Adtoma Support Team](mailto:support@adtoma.com).