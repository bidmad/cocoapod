//
//  UnityCommon.h
//  BidmadSDK
//
//  Created by Kenneth on 2021/02/23.
//  Copyright © 2021 ADOP Co., Ltd. All rights reserved.
//

#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"

#ifndef UnityCommon_h
#define UnityCommon_h

#import <Foundation/Foundation.h>
#import "BIDMADSetting.h"

@protocol BIDMADUnityCommonDelegate <NSObject>

@optional

- (void)BIDMADAdTrackingAuthorizationResponse:(NSString*)response;

@end

@interface UnityCommon : NSObject <BIDMADUnityCommonDelegate>{
    id<BIDMADUnityCommonDelegate> delegate;
}

+ (UnityCommon*)sharedInstance;

- (void)initializeSdk;
- (void)setDelegate:(id)param;
- (void)setDebugMode:(BOOL)isDebug;
- (void)setAdvertiserTrackingEnabled:(BOOL)enable;
- (BOOL)getAdvertiserTrackingEnabled;
- (void)reqAdTrackingAuthorization;
- (void)setGoogleTestId:(NSString*)testDeviceId;
- (NSString *)userID;
- (void)setUserID:(NSString *)userID;

@end

#endif /* UnityCommon_h */
