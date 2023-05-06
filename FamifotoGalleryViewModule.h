//
//  FamifotoGllaeryViewModule.h
//  react-native-famifoto-gallery
//
//  Created by wweng on 29/4/2023.
//
#import <React/RCTEventEmitter.h>
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNFamifotoGalleryViewModuleSpec.h"


@interface FamifotoGalleryViewModule : NSObject <NativeFamifotoGalleryViewModuleSpec>
#else
#import <React/RCTBridgeModule.h>

@interface FamifotoGalleryViewModule : NSObject <RCTBridgeModule>
#endif

@end
