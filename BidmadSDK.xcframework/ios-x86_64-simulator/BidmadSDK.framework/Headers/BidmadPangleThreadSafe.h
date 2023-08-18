//
//  BMAdPangleInitializer.h
//  BMAdPangleAdapter
//
//  Created by 플랫폼-오승섭-맥북 on 2023/08/01.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadPangleThreadSafe : NSObject

+ (BidmadPangleThreadSafe *)shared;
- (void)initializePangleSdkWithAppId:(NSString *)appId
                     isChildDirected:(NSNumber * _Nullable)isChildDirected
                     isGDPRConsented:(NSNumber * _Nullable)isGDPRConsented
                  isDebugLogTurnedOn:(BOOL)isDebugLogTurnedOn
                   completionHandler:(void (^)(NSError *))handler;

@end

NS_ASSUME_NONNULL_END
