//
//  BidmadPremiumAdsGoogleAdapterInfo.h
//  BidmadPremiumAdsGoogleAdapter
//
//  Privacy-manifest carrier for PremiumAdsGoogleAdapter.
//  This wrapper ships only the PrivacyInfo.xcprivacy declared in
//  PremiumAdsGoogleAdapter 1.0.8 while the project depends on 1.0.6,
//  which does not statically embed the full Google-Mobile-Ads-SDK.
//

#import <BidmadSDK/BidmadSDK.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadPremiumAdsGoogleAdapterInfo : NSObject <BidmadAdapterInfo>

@end

NS_ASSUME_NONNULL_END
