//
//  BidmadAppOpenAd.h
//  OpenBiddingHelper
//

#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"

#import <UIKit/UIKit.h>
#import "BidmadAdStandardFullScreenAd.h"
#import <BidmadSDK/BidmadSDK.h>
#import <BidmadSDK/BidmadSDK-Swift.h>

NS_ASSUME_NONNULL_BEGIN

@class BidmadAppOpenAd;

@protocol BidmadAppOpenAdDelegate <NSObject>
@optional
- (void)onLoadAppOpenAd:(BidmadAppOpenAd * _Nonnull)appOpenAd
                   info:(BidmadInfo * _Nonnull)info
    NS_SWIFT_NAME(onLoad(appOpenAd:info:));
- (void)onLoadFailAppOpenAd:(BidmadAppOpenAd * _Nonnull)appOpenAd
                      error:(NSError * _Nonnull)error
    NS_SWIFT_NAME(onLoadFail(appOpenAd:error:));
- (void)onShowAppOpenAd:(BidmadAppOpenAd * _Nonnull)appOpenAd
                   info:(BidmadInfo * _Nonnull)info
    NS_SWIFT_NAME(onShow(appOpenAd:info:));
- (void)onShowFailAppOpenAd:(BidmadAppOpenAd * _Nonnull)appOpenAd
                       info:(BidmadInfo * _Nonnull)info
                      error:(NSError * _Nonnull)error
    NS_SWIFT_NAME(onShowFail(appOpenAd:info:error:));
- (void)onClickAppOpenAd:(BidmadAppOpenAd * _Nonnull)appOpenAd
                    info:(BidmadInfo * _Nonnull)info
    NS_SWIFT_NAME(onClick(appOpenAd:info:));
- (void)onCloseAppOpenAd:(BidmadAppOpenAd * _Nonnull)appOpenAd
                    info:(BidmadInfo * _Nonnull)info
    NS_SWIFT_NAME(onClose(appOpenAd:info:));
@end

@interface BidmadAppOpenAd : NSObject <BidmadAdStandardFullScreenAd, BMAppOpenAdDelegate>

@property (nonatomic, weak) id<BidmadAppOpenAdDelegate> _Nullable delegate;
@property (nonatomic) BOOL isAutoReload;

@property (nonatomic, copy) void (^_Nullable onLoadAd)(BidmadAppOpenAd *, BidmadInfo *);
@property (nonatomic, copy) void (^_Nullable onLoadFailAd)(BidmadAppOpenAd *, NSError *);
@property (nonatomic, copy) void (^_Nullable onShowAd)(BidmadAppOpenAd *, BidmadInfo *);
@property (nonatomic, copy) void (^_Nullable onShowFailAd)(BidmadAppOpenAd *, BidmadInfo *, NSError *);
@property (nonatomic, copy) void (^_Nullable onClickAd)(BidmadAppOpenAd *, BidmadInfo *);
@property (nonatomic, copy) void (^_Nullable onCloseAd)(BidmadAppOpenAd *, BidmadInfo *);

@property (nonatomic, strong, readonly) BMAppOpenAd * _Nonnull bmAppOpenAd;

- (nonnull instancetype)initWithZoneID:(NSString * _Nonnull)zoneID;
- (void)load;
- (void)showOnViewController:(UIViewController * _Nonnull)viewController;
- (BOOL)isLoaded;

@end

NS_ASSUME_NONNULL_END
