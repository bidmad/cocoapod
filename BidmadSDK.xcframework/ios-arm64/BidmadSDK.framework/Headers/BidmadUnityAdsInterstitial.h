//
//  BidmadUnityAdsInterstitial.h
//  BidmadAdapterFC
//
//  Created by ADOP_Mac on 2022/07/05.
//

#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"

#import <UIKit/UIKit.h>
#import <ADOPUtility/BidmadAdapterAdEssential.h>
#import <ADOPUtility/BidmadAdapterRewardAdditional.h>
#import <ADOPUtility/BidmadAdapterEssential.h>
#import <UnityAds/UnityAds.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadUnityAdsInterstitial : BidmadAdapterAdEssential <UnityAdsLoadDelegate, UnityAdsShowDelegate, BidmadAdapterRewardAdditional, BidmadAdapterEssential>

- (void)load;
- (void)setIsDebug:(BOOL)isDebug;
- (void)setIsRewardedAd:(BOOL)isRewardedAd;
- (void)showOnViewController:(UIViewController *)viewController;
- (void)remove;

@end

NS_ASSUME_NONNULL_END
