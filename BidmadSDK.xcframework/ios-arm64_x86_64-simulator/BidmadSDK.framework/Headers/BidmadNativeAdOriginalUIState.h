//
//  BidmadNativeAdOriginalUIState.h
//  BidmadSDK
//
//  Created by 플랫폼-오승섭-맥북 on 2023/08/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BidmadNativeAdOriginalUIState : NSObject

// callToAction
@property (nonatomic, strong) NSNumber * _Nullable callToActionButtonUserInteractionEnabled;
@property (nonatomic, strong) NSString * _Nullable callToActionTitle;
@property (nonatomic, strong) NSNumber * _Nullable callToActionHidden;
@property (nonatomic, strong) NSNumber * _Nullable callToActionTag;

// iconImage
@property (nonatomic, strong) UIImage * _Nullable iconImage;
@property (nonatomic, strong) NSNumber * _Nullable iconImageHidden;
@property (nonatomic, strong) NSNumber * _Nullable iconImageTag;

// title
@property (nonatomic, strong) NSString * _Nullable title;
@property (nonatomic, strong) NSNumber * _Nullable titleHidden;
@property (nonatomic, strong) NSNumber * _Nullable titleTag;

// body
@property (nonatomic, strong) NSString * _Nullable body;
@property (nonatomic, strong) NSNumber * _Nullable bodyHidden;
@property (nonatomic, strong) NSNumber * _Nullable bodyTag;

// media
@property (nonatomic, strong) NSNumber * _Nullable mediaHidden;
@property (nonatomic, strong) NSNumber * _Nullable mediaTag;

// options
@property (nonatomic, strong) NSNumber * _Nullable optionsHidden;
@property (nonatomic, strong) NSNumber * _Nullable optionsTag;

+ (BidmadNativeAdOriginalUIState * (^)(void))newState;

@end

NS_ASSUME_NONNULL_END
