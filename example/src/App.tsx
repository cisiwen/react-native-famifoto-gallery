import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import { FamifotoGalleryView, multiply } from 'react-native-famifoto-gallery';

export default function App() {
  React.useEffect(() => {
    (async()=>{
      const result = await multiply(3, 7);
      console.log('multiply', result);
    })();
  }, []);
  return (
    <View style={styles.container}>
      <FamifotoGalleryView onDoubleClick={(event)=>{
        console.log(event);
      }} color="#42a852" style={styles.box} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
