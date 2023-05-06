#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import "Utils.h"
#import "react_native_famifoto_gallery-Swift.h"

@interface FamifotoGalleryViewManager : RCTViewManager
@end

@implementation FamifotoGalleryViewManager

RCT_EXPORT_MODULE(FamifotoGalleryView)

- (UIView *)view
{
  return [[UIView alloc] init];
}

RCT_CUSTOM_VIEW_PROPERTY(color, NSString, UIView)
{
  [view setBackgroundColor: [Utils hexStringToColor:json]];
}

@end
