#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadAdPopcornCore : NSObject

- (instancetype)init NS_UNAVAILABLE;

+ (void)initializeWithAppKey:(NSString *)appKey
               publisherCode:(NSString * _Nullable)publisherCode
                 serviceCode:(NSString * _Nullable)serviceCode
             caulyAppStoreId:(NSString * _Nullable)caulyAppStoreId
                caulyAppCode:(NSString * _Nullable)caulyAppCode
           completionHandler:(void (^)(NSError * _Nullable))handler;
+ (void)getAppKey:(NSString * _Nullable * _Nullable)appKey
    publisherCode:(NSString * _Nullable * _Nullable)publisherCode
      serviceCode:(NSString * _Nullable * _Nullable)serviceCode
      placementId:(NSString * _Nullable * _Nullable)placementId
  caulyAppStoreId:(NSString * _Nullable * _Nullable)caulyAppStoreId
     caulyAppCode:(NSString * _Nullable * _Nullable)caulyAppCode
             from:(NSString *)rawStringValue;
+ (NSError * _Nullable)errorFromInsufficientParametersWithAppKey:(NSString *)appKey
                                                     placementId:(NSString *)placementId;

@end

NS_ASSUME_NONNULL_END
