//
//  BidmadTestTool.h
//  OpenBiddingHelper
//
//  Created by Seungsub Oh on 2022/08/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct {
    BOOL isAvailable;
    NSString *unavailabilityReason;
    NSString *sdkVersion;
} BidmadAdNetworkSingleStatus;

typedef struct {
    BidmadAdNetworkSingleStatus AdMob;
    BidmadAdNetworkSingleStatus AdManager;
    BidmadAdNetworkSingleStatus LegacyATOM;
    BidmadAdNetworkSingleStatus AdColony;
    BidmadAdNetworkSingleStatus AppLovin;
    BidmadAdNetworkSingleStatus IronSource;
    BidmadAdNetworkSingleStatus Vungle;
    BidmadAdNetworkSingleStatus UnityAds;
    BidmadAdNetworkSingleStatus NewATOM;
    BidmadAdNetworkSingleStatus AdFit;
    BidmadAdNetworkSingleStatus Fyber;
    BidmadAdNetworkSingleStatus Pangle;
} BidmadAdNetworkStatus;

@interface BidmadTestTool : NSObject

+ (BidmadAdNetworkStatus)checkAdNetworkAvailability;

@end

NS_ASSUME_NONNULL_END
