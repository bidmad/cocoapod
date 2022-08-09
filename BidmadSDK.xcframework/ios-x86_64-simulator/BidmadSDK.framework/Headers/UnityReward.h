//
//  UnityReward.h
//  BidmadSDK
//
//  Created by Kenneth on 2021/01/15.
//  Copyright © 2021 ADOP Co., Ltd. All rights reserved.
//

#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"

#ifndef UnityReward_h
#define UnityReward_h

#import <Foundation/Foundation.h>
#import "BIDMADSetting.h"
#import "BIDMADRewardVideo.h"

static NSMutableDictionary* BidmadRewardDic;

@interface UnityReward : NSObject <BIDMADRewardVideoDelegate>{
    NSString* mZoneId;
    UIViewController* mParentVC;
    id<BIDMADRewardVideoDelegate> delegate;
    @public BIDMADRewardVideo* bidmadReward;
}

- (id)initWithZoneId:(NSString *)zoneId parentVC:(UIViewController *)parentVC;
+ (id)getInstance:(NSString *)zoneId;
- (void)setZoneID:(NSString *)zoneId;
- (void)setDelegate:(id) param;
- (void)load;
- (void)show;
- (bool)isLoaded;

@end

#endif
