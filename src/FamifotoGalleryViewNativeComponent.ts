import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';
import type { ViewProps } from 'react-native';
import type { DirectEventHandler, Double } from 'react-native/Libraries/Types/CodegenTypes';

type OnPageScrollEventData = Readonly<{
  position: Double;
  offset: Double;
}>;
interface NativeProps extends ViewProps {
  color?: string;
  onDoubleClick?: DirectEventHandler<OnPageScrollEventData>;
}

export default codegenNativeComponent<NativeProps>('FamifotoGalleryView');
