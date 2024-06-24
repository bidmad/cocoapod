#import <Foundation/Foundation.h>

typedef NS_CLOSED_ENUM(NSInteger, BidmadBannerSizeStrategy) {
  BidmadBannerSizeStrategyFitCompassSize = 0,
  BidmadBannerSizeStrategyExpandToMaxWidthAndFitCompassHeight = 1,
  BidmadBannerSizeStrategyExpandToMaxWidthAndExpandToLoadedAdHeight = 2,
  BidmadBannerSizeStrategyWidthFlexToContainerAndFitCompassHeight = 3,
  BidmadBannerSizeStrategyUnsupported = 4,
};
