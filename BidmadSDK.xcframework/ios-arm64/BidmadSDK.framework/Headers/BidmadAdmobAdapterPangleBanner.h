//
//  BidmadAdmobAdapterPangleBanner.h
//  BidmadAdapterFNC
//
//  Created by Kenneth on 2022/07/08.
//

#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"

#import <UIKit/UIKit.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadAdmobAdapterPangleBanner : NSObject<GADCustomEventBanner>

@property(nonatomic, weak, nullable) id<GADCustomEventBannerDelegate> delegate;

- (void)requestBannerAd:(GADAdSize)adSize
              parameter:(nullable NSString *)serverParameter
                  label:(nullable NSString *)serverLabel
                request:(nonnull GADCustomEventRequest *)request;

@end

NS_ASSUME_NONNULL_END
