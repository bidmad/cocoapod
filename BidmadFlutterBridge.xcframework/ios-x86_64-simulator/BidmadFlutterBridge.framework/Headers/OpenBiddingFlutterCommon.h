//
//  OpenBiddingFlutterCommon.h
//  BidmadSDK
//
//  Created by ADOP_Mac on 2021/03/25.
//

#import <Foundation/Foundation.h>

#if __has_include(<Flutter/Flutter.h>) || __has_include("Flutter.h")
@import Flutter;
#endif

NS_ASSUME_NONNULL_BEGIN

@class OpenBiddingFlutterBannerRefined;
@class OpenBiddingFlutterNativeAdViewFactory;
@class OpenBiddingBanner;
@class OpenBiddingFlutterBannerRefinedFactory;
@class OpenBiddingFlutterInterstitial;
@class OpenBiddingFlutterRewardVideo;

@interface OpenBiddingFlutterCommonStorage : NSObject

+ (OpenBiddingFlutterCommonStorage *)shared;
@property (nonatomic) OpenBiddingFlutterNativeAdViewFactory * _Nullable nativeAdViewFactory;
@property (nonatomic, strong) OpenBiddingFlutterBannerRefinedFactory *bannerAdFactory;
@property (nonatomic, strong) NSMutableArray<OpenBiddingFlutterInterstitial *> *interstitialInstances;
@property (nonatomic, strong) NSMutableArray<OpenBiddingFlutterRewardVideo *> *rewardInstances;

@end

@interface OpenBiddingFlutterCommon : NSObject

- (void)initChannel: (id)registrar;

@property (strong, nonatomic) id flutterChannel;
@property (strong, nonatomic) NSString * channelName;

@end

NS_ASSUME_NONNULL_END
