//
//  BidmadBannerAdapter.h
//  BidmadSDK
//
//  Created by 플랫폼-오승섭-맥북 on 2023/08/24.
//

#import <UIKit/UIKit.h>
#import <BidmadSDK/BidmadAdUnit.h>

NS_ASSUME_NONNULL_BEGIN

@class BidmadBannerAdapter;

@protocol BidmadBannerAdapterDelegate <NSObject>

- (void)clickedWith:(__kindof BidmadBannerAdapter *)ad;

@end

@interface BidmadBannerAdapter : NSObject

@property (nonatomic, weak) id<BidmadBannerAdapterDelegate> delegate;
@property (nonatomic, strong) BidmadAdUnit *adUnit;

- (void)loadAdFrom:(UIViewController *)viewController
              with:(void (^)(BidmadBannerAdapter * _Nullable,
                             UIView * _Nullable,
                             CGSize,
                             NSError * _Nullable))completionHandler;
- (void)destroyed;
- (instancetype)initWithAdUnit:(BidmadAdUnit *)adUnit;

@end

NS_ASSUME_NONNULL_END
