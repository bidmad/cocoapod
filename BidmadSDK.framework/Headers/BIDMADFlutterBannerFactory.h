#import <Flutter/Flutter.h>
#import <BidmadSDK/BIDMADFlutterCommon.h>

@interface BIDMADFlutterBannerFactory : NSObject <FlutterPlatformViewFactory>
- (instancetype)initWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar;
@end
