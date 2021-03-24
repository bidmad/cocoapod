#import <Flutter/Flutter.h>
#import <BidmadSDK/BidmadSDK.h>

@interface BidmadsdkFlutterPlugin : NSObject<FlutterPlugin>

+ (id)sharedInstance;

@property (strong, nonatomic) NSString * channelName;
@property (strong, nonatomic) FlutterMethodChannel* flutterChannel;

//properties used for isLoaded callbacks
//@property (strong, nonatomic) NSMutableArray* callbackInstances;
- (void) checkIsLoaded: (FlutterResult) result;
- (void) returnFailed: (FlutterResult) result;

@end
