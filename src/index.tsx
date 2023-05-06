export { default as FamifotoGalleryView } from './FamifotoGalleryViewNativeComponent';
export * from './FamifotoGalleryViewNativeComponent';
import { NativeModules, Platform ,NativeEventEmitter} from 'react-native';
const LINKING_ERROR =
  `The package 'react-native-awesome-module' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

// @ts-expect-error
const isTurboModuleEnabled = global.__turboModuleProxy != null;

const AwesomeModuleModule = isTurboModuleEnabled
  ? require('./NativeGalleryviewNativeModule').default
  : NativeModules.FamifotoGalleryViewModule;
console.log(isTurboModuleEnabled,NativeModules.FamifotoGalleryViewModule);
new NativeEventEmitter(AwesomeModuleModule);
const AwesomeModule = AwesomeModuleModule
  ? AwesomeModuleModule
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function multiply(a: number, b: number): Promise<number> {
  return AwesomeModule.multiply(a, b);
}

 