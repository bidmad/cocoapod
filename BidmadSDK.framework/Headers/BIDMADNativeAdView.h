//
//  BIDMADNativeAdView.h
//  BidmadSDK
//
//  Created by Seungsub Oh on 2021/08/17.
//  Copyright © 2021 ADOP Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMobileAds/GADNativeAd.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BidmadMANativeAdView <NSObject>

- (instancetype)init;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *advertiserLabel;
@property (nonatomic, weak) IBOutlet UILabel *bodyLabel;
@property (nonatomic, weak) IBOutlet UIImageView *iconImageView;
@property (nonatomic, weak) IBOutlet UIView *mediaContentView;
@property (nonatomic, weak, nullable) IBOutlet UIButton *callToActionButton;

@end

@interface BIDMADNativeAdView : GADNativeAdView

@property(nonatomic, weak, nullable) IBOutlet UIImageView* iconViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UILabel* headlineViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UILabel* advertiserViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UIView* starRatingViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UILabel* bodyViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UIView* mediaViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UILabel* priceViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UILabel* storeViewCustom;
@property(nonatomic, weak, nullable) IBOutlet UIButton* callToActionViewCustom;

@property(nonatomic, strong, nullable) UIView* alMaxNativeAdView;

- (void)setup;
- (void)cleanUp;
- (GADMediaView* _Nonnull)setupForGoogleAd:(GADMediaView* _Nullable)mediaViewToSetup;
- (UIView *)setupForAppLovinAd:(UIView *)alNativeAdView;

@end

NS_ASSUME_NONNULL_END
