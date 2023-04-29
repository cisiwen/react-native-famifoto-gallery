#ifdef RCT_NEW_ARCH_ENABLED
#import "FamifotoGalleryView.h"

#import <react/renderer/components/RNFamifotoGalleryViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNFamifotoGalleryViewSpec/EventEmitters.h>
#import <react/renderer/components/RNFamifotoGalleryViewSpec/Props.h>
#import <react/renderer/components/RNFamifotoGalleryViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface FamifotoGalleryView () <RCTFamifotoGalleryViewViewProtocol>

@end

@implementation FamifotoGalleryView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<FamifotoGalleryViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const FamifotoGalleryViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<FamifotoGalleryViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<FamifotoGalleryViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> FamifotoGalleryViewCls(void)
{
    return FamifotoGalleryView.class;
}

@end
#endif
