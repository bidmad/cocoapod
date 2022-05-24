// Generated by Apple Swift version 5.3.1 (swiftlang-1200.0.41 clang-1200.0.32.8)
#ifndef BIDMADSDK_SWIFT_H
#define BIDMADSDK_SWIFT_H
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <Foundation/Foundation.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(ns_consumed)
# define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
#else
# define SWIFT_RELEASES_ARGUMENT
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import ADOPUtility;
@import CoreGraphics;
@import Foundation;
@import GoogleMobileAds;
@import ObjectiveC;
@import UIKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="BidmadSDK",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@protocol BidmadNativeAdDataInterface;
@class NSNumber;
@class GADAdLoader;
@class GADNativeAd;

SWIFT_CLASS("_TtC9BidmadSDK19BIDMADAdmobNativeAd")
@interface BIDMADAdmobNativeAd : NSObject <BIDMADNativeAdCommonInterface, GADNativeAdLoaderDelegate>
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull TEST_ADMOB_NATIVEAD;)
+ (NSString * _Nonnull)TEST_ADMOB_NATIVEAD SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull TEST_ADX_NATIVEAD;)
+ (NSString * _Nonnull)TEST_ADX_NATIVEAD SWIFT_WARN_UNUSED_RESULT;
@property (nonatomic, readonly, copy) NSString * _Nonnull appid;
@property (nonatomic) BOOL isAdMob;
@property (nonatomic, readonly, copy) void (^ _Nonnull loadCallback)(id <BidmadNativeAdDataInterface> _Nullable);
@property (nonatomic, readonly, copy) void (^ _Nonnull clickCallback)(id <BidmadNativeAdDataInterface> _Nonnull);
- (nonnull instancetype)initWith:(NSString * _Nonnull)appid placementId:(NSString * _Nullable)placementId bidmadController:(id _Nonnull)bidmadController isDebug:(BOOL)isDebug isChildDirectedAds:(NSNumber * _Nullable)isChildDirectedAds loadCallback:(void (^ _Nonnull)(id <BidmadNativeAdDataInterface> _Nullable))loadCallback clickCallback:(void (^ _Nonnull)(id <BidmadNativeAdDataInterface> _Nullable))clickCallback OBJC_DESIGNATED_INITIALIZER;
- (void)loadNativeAd;
- (void)remove;
- (void)adLoader:(GADAdLoader * _Nonnull)adLoader didFailToReceiveAdWithError:(NSError * _Nonnull)error;
- (void)adLoader:(GADAdLoader * _Nonnull)adLoader didReceiveNativeAd:(GADNativeAd * _Nonnull)nativeAd;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class GADVideoController;

@interface BIDMADAdmobNativeAd (SWIFT_EXTENSION(BidmadSDK)) <GADVideoControllerDelegate>
- (void)videoControllerDidPlayVideo:(GADVideoController * _Nonnull)videoController;
- (void)videoControllerDidEndVideoPlayback:(GADVideoController * _Nonnull)videoController;
@end


@interface BIDMADAdmobNativeAd (SWIFT_EXTENSION(BidmadSDK)) <GADNativeAdDelegate>
- (void)nativeAdDidRecordImpression:(GADNativeAd * _Nonnull)nativeAd;
- (void)nativeAdDidRecordClick:(GADNativeAd * _Nonnull)nativeAd;
- (void)nativeAdWillPresentScreen:(GADNativeAd * _Nonnull)nativeAd;
- (void)nativeAdWillDismissScreen:(GADNativeAd * _Nonnull)nativeAd;
- (void)nativeAdDidDismissScreen:(GADNativeAd * _Nonnull)nativeAd;
- (void)nativeAdWillLeaveApplication:(GADNativeAd * _Nonnull)nativeAd;
@end

@class UIImage;
@class NSDecimalNumber;
@class GADMediaContent;
@class GADMediaView;
@class UIView;
@class UIImageView;

SWIFT_CLASS("_TtC9BidmadSDK14BIDMADNativeAd")
@interface BIDMADNativeAd : NSObject <BidmadNativeAdDataInterface>
@property (nonatomic) NSInteger id;
- (nonnull instancetype)initWithIdentifier:(NSInteger)identifier OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, copy) NSString * _Nullable headline;
@property (nonatomic, copy) NSString * _Nullable body;
@property (nonatomic, copy) NSString * _Nullable callToAction;
@property (nonatomic, strong) UIImage * _Nullable icon;
@property (nonatomic, strong) NSDecimalNumber * _Nullable starRating;
@property (nonatomic, copy) NSString * _Nullable store;
@property (nonatomic, copy) NSString * _Nullable price;
@property (nonatomic, copy) NSString * _Nullable advertiser;
@property (nonatomic, strong) id _Nullable nativeAdAdMob;
@property (nonatomic, strong) id _Nullable nativeAdPangle;
@property (nonatomic, strong) GADMediaContent * _Nullable mediaContent;
@property (nonatomic, strong) GADMediaView * _Nullable mediaView;
@property (nonatomic, copy) NSString * _Nullable pangleMediaImageURL;
@property (nonatomic, strong) UIView * _Nullable pangleMediaVideoView;
@property (nonatomic, strong) UIImageView * _Nullable pangleMediaImageView;
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (void)remove;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class NSError;

SWIFT_PROTOCOL("_TtP9BidmadSDK22BIDMADNativeAdDelegate_")
@protocol BIDMADNativeAdDelegate
- (void)bidmadNativeAdWithLoadedAd:(BIDMADNativeAd * _Nonnull)loadedAd;
- (void)bidmadNativeAdWithClickedAd:(BIDMADNativeAd * _Nonnull)clickedAd;
- (void)bidmadNativeAdAllFail:(NSError * _Nonnull)error;
@end


SWIFT_CLASS("_TtC9BidmadSDK20BIDMADNativeAdLoader")
@interface BIDMADNativeAdLoader : NSObject
@property (nonatomic, weak) id <BIDMADNativeAdDelegate> _Nullable delegate;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)requestFor:(NSString * _Nonnull)zoneID;
@end


SWIFT_CLASS("_TtC9BidmadSDK12BidmadAdInfo")
@interface BidmadAdInfo : NSObject
@property (nonatomic, copy) NSDictionary<NSString *, id> * _Nonnull adInfoDict;
@property (nonatomic, readonly, copy) NSString * _Nonnull adInfoKey;
@property (nonatomic, readonly, copy) NSString * _Nonnull adNetworkType;
@property (nonatomic) float floorPrice;
@property (nonatomic, readonly, copy) NSString * _Nonnull appID;
@property (nonatomic, readonly, copy) NSString * _Nonnull pubID;
@property (nonatomic, readonly) BOOL isOBH;
@property (nonatomic, readonly) NSInteger originalOrder;
/// ads_dic[currentAd][] adv_price
- (nonnull instancetype)initWithAdInfoDict:(NSDictionary<NSString *, id> * _Nonnull)adInfoDict adInfoKey:(NSString * _Nonnull)adInfoKey adNetworkType:(NSString * _Nullable)adNetworkType floorPrice:(NSNumber * _Nullable)floorPrice appID:(NSString * _Nullable)appID pubID:(NSString * _Nullable)pubID isOBH:(NSNumber * _Nullable)isOBH originalOrder:(NSNumber * _Nullable)originalOrder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC9BidmadSDK13BidmadNetwork")
@interface BidmadNetwork : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIEvent;
@class NSCoder;

SWIFT_CLASS("_TtC9BidmadSDK18BidmadParentUIView")
@interface BidmadParentUIView : UIView
- (UIView * _Nullable)hitTest:(CGPoint)point withEvent:(UIEvent * _Nullable)event SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC9BidmadSDK13BidmadUtility")
@interface BidmadUtility : NSObject
/// If nil, the app does not have to be compliant under GDPR.
/// But if the app did set GDPR Consent Status, it will either return true or false in NSNumber format.
+ (NSNumber * _Nullable)gdprSettingToOptionalBool SWIFT_WARN_UNUSED_RESULT;
+ (NSArray<BidmadAdInfo *> * _Nonnull)bidmadSwiftSort:(NSArray<BidmadAdInfo *> * _Nonnull)adInfoArray SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_PROTOCOL("_TtP9BidmadSDK26CompassDataRequestDelegate_")
@protocol CompassDataRequestDelegate
- (void)DataRequestSuccess;
- (void)DataRequestFail:(NSString * _Nonnull)errorReason;
@end


SWIFT_CLASS("_TtC9BidmadSDK18MediationTableView")
@interface MediationTableView : UIView
- (nonnull instancetype)initWithFrame:(CGRect)frame adOrder:(NSArray<NSString *> * _Nonnull)adOrder adEcpm:(NSArray<NSString *> * _Nonnull)adEcpm adFill:(NSArray<NSString *> * _Nonnull)adFill tableViewCellHeight:(NSInteger)tableViewCellHeight OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end

@class UITableView;

@interface MediationTableView (SWIFT_EXTENSION(BidmadSDK)) <UITableViewDelegate>
- (CGFloat)tableView:(UITableView * _Nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
@end

@class UITableViewCell;

@interface MediationTableView (SWIFT_EXTENSION(BidmadSDK)) <UITableViewDataSource>
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
@end


@interface UIDevice (SWIFT_EXTENSION(BidmadSDK))
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull bidmadModelNameChecker;)
+ (NSString * _Nonnull)bidmadModelNameChecker SWIFT_WARN_UNUSED_RESULT;
@end

#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
#endif
