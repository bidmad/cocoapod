//
//  OpenBiddingUtility.h
//  divination
//
//  Created by ADOP_Mac on 2021/06/24.
//  Copyright © 2021 Handasoft Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OpenBiddingUtility : NSObject

+ (NSString *)SDKVersion;
+ (NSURLSessionDataTask *)openBiddingDataFetcherWithZoneId: (NSString *)zoneId completionBlock:(void (^)(NSDictionary * _Nullable, NSError * _Nullable, NSDictionary * _Nullable, NSString * _Nullable, NSString * _Nullable, NSNumber * _Nullable, NSNumber * _Nullable, NSString * _Nullable))completionBlock;
+ (void) sendLogOBH :(NSDictionary *)info :(NSString *)advertisementType :(NSString *)logType :(NSString*)sessionId :(NSString*)realZoneId;

@end

NS_ASSUME_NONNULL_END
