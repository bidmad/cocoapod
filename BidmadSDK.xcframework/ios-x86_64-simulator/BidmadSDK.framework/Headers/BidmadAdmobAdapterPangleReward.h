//
//  BidmadAdmobAdapterPangleReward.h
//  BidmadAdapterFNC
//
//  Created by Kenneth on 2022/07/08.
//

#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"

#import <UIKit/UIKit.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadAdmobAdapterPangleReward : NSObject<GADMediationAdapter, GADMediationRewardedAd>

@property(nonatomic, weak, nullable) id<GADMediationRewardedAdEventDelegate> delegate;

- (void)loadRewardedAdForAdConfiguration:(nonnull GADMediationRewardedAdConfiguration *)adConfiguration completionHandler:(nonnull GADMediationRewardedLoadCompletionHandler)completionHandler;
- (void)presentFromViewController:(nonnull UIViewController *)viewController;

+ (GADVersionNumber)adapterVersion;
+ (GADVersionNumber)adSDKVersion;
+ (nullable Class<GADAdNetworkExtras>)networkExtrasClass;

@end

NS_ASSUME_NONNULL_END
