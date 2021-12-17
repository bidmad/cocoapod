// Generated by Apple Swift version 5.5.2 (swiftlang-1300.0.47.5 clang-1300.0.29.30)
#ifndef OPENBIDDINGHELPER_SWIFT_H
#define OPENBIDDINGHELPER_SWIFT_H
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
@import BidmadSDK;
@import ObjectiveC;
#endif

#import <OpenBiddingHelper/OpenBiddingHelper.h>

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
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="OpenBiddingHelper",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@protocol OpenBiddingAppOpenAdDelegate;
@class UIViewController;
@class NSString;
@class NSNumber;

SWIFT_CLASS("_TtC17OpenBiddingHelper15BidmadAppOpenAd")
@interface BidmadAppOpenAd : NSObject
@property (nonatomic, strong) id <OpenBiddingAppOpenAdDelegate> _Nullable delegate;
- (nonnull instancetype)initWith:(UIViewController * _Nonnull)parentViewController zoneID:(NSString * _Nonnull)zoneID OBJC_DESIGNATED_INITIALIZER;
- (void)load;
- (void)show;
- (void)setCUID:(NSString * _Nonnull)cuid;
- (void)deregisterForAppOpenAd;
- (BOOL)isLoaded SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class OpenBiddingAppOpenAd;

@interface BidmadAppOpenAd (SWIFT_EXTENSION(OpenBiddingHelper)) <OpenBiddingAppOpenAdDelegate>
- (void)OpenBiddingAppOpenAdLoad:(OpenBiddingAppOpenAd * _Null_unspecified)core;
- (void)OpenBiddingAppOpenAdShow:(OpenBiddingAppOpenAd * _Null_unspecified)core;
- (void)OpenBiddingAppOpenAdClick:(OpenBiddingAppOpenAd * _Null_unspecified)core;
- (void)OpenBiddingAppOpenAdClose:(OpenBiddingAppOpenAd * _Null_unspecified)core;
- (void)OpenBiddingAppOpenAdAllFail:(OpenBiddingAppOpenAd * _Null_unspecified)core code:(NSString * _Null_unspecified)error;
@end

@protocol BIDMADOpenBiddingBannerDelegate;
@class UIView;

SWIFT_CLASS("_TtC17OpenBiddingHelper14BidmadBannerAd")
@interface BidmadBannerAd : NSObject
@property (nonatomic, strong) id <BIDMADOpenBiddingBannerDelegate> _Nullable delegate;
- (nonnull instancetype)initWith:(UIViewController * _Nonnull)parentViewController containerView:(UIView * _Nonnull)containerView zoneID:(NSString * _Nonnull)zoneID OBJC_DESIGNATED_INITIALIZER;
- (void)load;
- (void)setRefreshInterval:(NSInteger)refreshIntervalTime;
- (void)setCUID:(NSString * _Nonnull)cuid;
- (void)hide;
- (void)show;
- (void)remove;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class OpenBiddingBanner;

@interface BidmadBannerAd (SWIFT_EXTENSION(OpenBiddingHelper)) <BIDMADOpenBiddingBannerDelegate>
- (void)BIDMADOpenBiddingBannerLoad:(OpenBiddingBanner * _Null_unspecified)core;
- (void)BIDMADOpenBiddingBannerClick:(OpenBiddingBanner * _Null_unspecified)core;
- (void)BIDMADOpenBiddingBannerAllFail:(OpenBiddingBanner * _Null_unspecified)core;
- (void)BIDMADOpenBiddingBannerClosed:(OpenBiddingBanner * _Null_unspecified)core;
@end


SWIFT_CLASS("_TtC17OpenBiddingHelper12BidmadCommon")
@interface BidmadCommon : NSObject
+ (void)setAdvertiserTrackingEnabled:(BOOL)enable;
+ (BOOL)getAdvertiserTrackingEnabled SWIFT_WARN_UNUSED_RESULT;
+ (void)reqAdTrackingAuthorizationWith:(void (^ _Nonnull)(BidmadTrackingAuthorizationStatus))completionHandler;
/// If your app is directed to kids under the age of 13, please set YES or true.
+ (void)setIsChildDirectedAds:(BOOL)isChildDirectedAdsNeeded;
/// If your app should be compliant to CCPA, please set the user consent status with this method.
+ (void)setUserConsentStatusForCCPACompliance:(BOOL)isUserConsent;
+ (void)setIsDebug:(BOOL)isDebug;
+ (BOOL)isDebug SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)bidmadVersion SWIFT_WARN_UNUSED_RESULT;
+ (void)setTestDeviceId:(NSString * _Nonnull)testDeviceId;
+ (NSString * _Nonnull)testDeviceId SWIFT_WARN_UNUSED_RESULT;
/// Setting for Child-Directed Treament for COPPA-Compliance.
+ (NSNumber * _Nullable)isChildDirectedTreament SWIFT_WARN_UNUSED_RESULT;
/// Setting for CCPA User Consent Status. If nil, the app does not have to be compliant to CCPA.
+ (NSNumber * _Nullable)isUserConsentCCPA SWIFT_WARN_UNUSED_RESULT;
+ (void)initializeSdk;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@protocol BIDMADOpenBiddingInterstitialDelegate;

SWIFT_CLASS("_TtC17OpenBiddingHelper20BidmadInterstitialAd")
@interface BidmadInterstitialAd : NSObject
@property (nonatomic, strong) id <BIDMADOpenBiddingInterstitialDelegate> _Nullable delegate;
- (nonnull instancetype)initWith:(UIViewController * _Nonnull)parentViewController zoneID:(NSString * _Nonnull)zoneID OBJC_DESIGNATED_INITIALIZER;
- (void)load;
- (void)show;
- (void)setCUID:(NSString * _Nonnull)cuid;
- (BOOL)isLoaded SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class OpenBiddingInterstitial;

@interface BidmadInterstitialAd (SWIFT_EXTENSION(OpenBiddingHelper)) <BIDMADOpenBiddingInterstitialDelegate>
- (void)BIDMADOpenBiddingInterstitialLoad:(OpenBiddingInterstitial * _Null_unspecified)core;
- (void)BIDMADOpenBiddingInterstitialShow:(OpenBiddingInterstitial * _Null_unspecified)core;
- (void)BIDMADOpenBiddingInterstitialClose:(OpenBiddingInterstitial * _Null_unspecified)core;
- (void)BIDMADOpenBiddingInterstitialAllFail:(OpenBiddingInterstitial * _Null_unspecified)core;
@end

@protocol BIDMADOfferwallDelegate;

SWIFT_CLASS("_TtC17OpenBiddingHelper17BidmadOfferwallAd")
@interface BidmadOfferwallAd : NSObject
@property (nonatomic, strong) id <BIDMADOfferwallDelegate> _Nullable delegate;
- (nonnull instancetype)initWith:(UIViewController * _Nonnull)parentViewController zoneID:(NSString * _Nonnull)zoneID OBJC_DESIGNATED_INITIALIZER;
- (void)load;
- (void)show;
- (void)setCUID:(NSString * _Nonnull)cuid;
- (BOOL)isLoaded SWIFT_WARN_UNUSED_RESULT;
/// Currency info will be provided through completion handler, with the true if success, false if failed.
/// If success (true), currency amount (Double) is available.
- (void)getCurrencyWithCurrencyReceivalCompletion:(void (^ _Nonnull)(BOOL, NSInteger))currencyReceivalCompletion;
/// Whether Currency Spenditure was successful or not is provided through completion handler.
/// If success, true and if failure, false
- (void)spendCurrency:(NSInteger)amount currencySpenditureCompletion:(void (^ _Nonnull)(BOOL, NSInteger))currencySpenditureCompletion;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class BIDMADOfferwall;

@interface BidmadOfferwallAd (SWIFT_EXTENSION(OpenBiddingHelper)) <BIDMADOfferwallCurrencyDelegate>
- (void)BIDMADOfferwallSpendCurrencyFail:(BIDMADOfferwall * _Null_unspecified)core error:(NSString * _Null_unspecified)error;
- (void)BIDMADOfferwallGetCurrencyBalanceFail:(BIDMADOfferwall * _Null_unspecified)core error:(NSString * _Null_unspecified)error;
- (void)BIDMADOfferwallSpendCurrencySuccess:(BIDMADOfferwall * _Null_unspecified)core currencyName:(NSString * _Null_unspecified)currencyName balance:(int32_t)balance;
- (void)BIDMADOfferwallGetCurrencyBalanceSuccess:(BIDMADOfferwall * _Null_unspecified)core currencyName:(NSString * _Null_unspecified)currencyName balance:(int32_t)balance;
@end


@interface BidmadOfferwallAd (SWIFT_EXTENSION(OpenBiddingHelper)) <BIDMADOfferwallDelegate>
- (void)BIDMADOfferwallLoadAd:(BIDMADOfferwall * _Null_unspecified)core;
- (void)BIDMADOfferwallShowAd:(BIDMADOfferwall * _Null_unspecified)core;
- (void)BIDMADOfferwallCloseAd:(BIDMADOfferwall * _Null_unspecified)core;
- (void)BIDMADOfferwallFailedAd:(BIDMADOfferwall * _Null_unspecified)core;
- (void)BIDMADOfferwallInitSuccess:(BIDMADOfferwall * _Null_unspecified)core;
- (void)BIDMADOfferwallInitFail:(BIDMADOfferwall * _Null_unspecified)core error:(NSString * _Null_unspecified)error;
@end

@protocol BIDMADOpenBiddingRewardVideoDelegate;

SWIFT_CLASS("_TtC17OpenBiddingHelper14BidmadRewardAd")
@interface BidmadRewardAd : NSObject
@property (nonatomic, strong) id <BIDMADOpenBiddingRewardVideoDelegate> _Nullable delegate;
- (nonnull instancetype)initWith:(UIViewController * _Nonnull)parentViewController zoneID:(NSString * _Nonnull)zoneID OBJC_DESIGNATED_INITIALIZER;
- (void)load;
- (void)show;
- (void)setCUID:(NSString * _Nonnull)cuid;
- (BOOL)isLoaded SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class OpenBiddingRewardVideo;

@interface BidmadRewardAd (SWIFT_EXTENSION(OpenBiddingHelper)) <BIDMADOpenBiddingRewardVideoDelegate>
- (void)BIDMADOpenBiddingRewardSkipped:(OpenBiddingRewardVideo * _Null_unspecified)core;
- (void)BIDMADOpenBiddingRewardVideoLoad:(OpenBiddingRewardVideo * _Null_unspecified)core;
- (void)BIDMADOpenBiddingRewardVideoShow:(OpenBiddingRewardVideo * _Null_unspecified)core;
- (void)BIDMADOpenBiddingRewardVideoClick:(OpenBiddingRewardVideo * _Null_unspecified)core;
- (void)BIDMADOpenBiddingRewardVideoClose:(OpenBiddingRewardVideo * _Null_unspecified)core;
- (void)BIDMADOpenBiddingRewardVideoSucceed:(OpenBiddingRewardVideo * _Null_unspecified)core;
- (void)BIDMADOpenBiddingRewardVideoAllFail:(OpenBiddingRewardVideo * _Null_unspecified)core;
@end

@protocol OpenBiddingRewardInterstitialDelegate;

SWIFT_CLASS("_TtC17OpenBiddingHelper26BidmadRewardInterstitialAd")
@interface BidmadRewardInterstitialAd : NSObject
@property (nonatomic, strong) id <OpenBiddingRewardInterstitialDelegate> _Nullable delegate;
- (nonnull instancetype)initWith:(UIViewController * _Nonnull)parentViewController zoneID:(NSString * _Nonnull)zoneID OBJC_DESIGNATED_INITIALIZER;
- (void)load;
- (void)show;
- (void)setCUID:(NSString * _Nonnull)cuid;
- (BOOL)isLoaded SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class OpenBiddingRewardInterstitial;

@interface BidmadRewardInterstitialAd (SWIFT_EXTENSION(OpenBiddingHelper)) <OpenBiddingRewardInterstitialDelegate>
- (void)OpenBiddingRewardInterstitialLoad:(OpenBiddingRewardInterstitial * _Null_unspecified)core;
- (void)OpenBiddingRewardInterstitialShow:(OpenBiddingRewardInterstitial * _Null_unspecified)core;
- (void)OpenBiddingRewardInterstitialClick:(OpenBiddingRewardInterstitial * _Null_unspecified)core;
- (void)OpenBiddingRewardInterstitialClose:(OpenBiddingRewardInterstitial * _Null_unspecified)core;
- (void)OpenBiddingRewardInterstitialSkipped:(OpenBiddingRewardInterstitial * _Null_unspecified)core;
- (void)OpenBiddingRewardInterstitialSuccess:(OpenBiddingRewardInterstitial * _Null_unspecified)core;
- (void)OpenBiddingRewardInterstitialAllFail:(OpenBiddingRewardInterstitial * _Null_unspecified)core;
@end

#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
#endif
