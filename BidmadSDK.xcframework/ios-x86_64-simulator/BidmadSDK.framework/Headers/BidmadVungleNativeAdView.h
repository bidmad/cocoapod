//
//  BidmadVungleNativeAdView.h
//  BidmadSDK
//
//  Created by Seungsub Oh on 2023/05/04.
//

#import <UIKit/UIKit.h>
#import <ADOPUtility/ADOPUtility.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadVungleNativeAdView : UIView <BidmadNativeAdViewContainerProtocol>

@property (nonatomic, weak) BIDMADNativeAdView *adView;

@end

NS_ASSUME_NONNULL_END
