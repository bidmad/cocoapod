//
//  BIDMADPangleReward.h
//  BidmadSDK
//
//  Created by ADOP_Mac on 2021/06/25.
//  Copyright © 2021 ADOP Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BUFoundation/BUFoundation.h>
#import <BUAdSDK/BUAdSDK.h>
#import <BUVAAuxiliary/BUVAAuxiliary.h>

#define PANGLE_REWARD_TEST_ID_VERTICAL @"946273162"
#define PANGLE_REWARD_TEST_ID_HORIZONTAL @"946273166"
#define PANGLE_REWARD_TEST_APPID @"5185174"

@interface BIDMADPangleReward : NSObject<BURewardedVideoAdDelegate>

@property (weak,nonatomic) id bidmadControllerForCallbacks;

- (id)initWithAppID:(NSString *)appID pubID:(NSString *)pubID rootVC:(UIViewController *)rootVC parentView:(UIView *)parentView;
- (void)load;
- (void)setExtra:(NSDictionary<NSString *,id> *)extra;
- (void)setBidmadController:(id)bidmadController;
- (void)show;
- (void)hide;
- (void)remove;

@end
