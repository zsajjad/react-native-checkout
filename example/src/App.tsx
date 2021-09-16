import * as React from 'react';
import { StyleSheet, View, Text } from 'react-native';
import Checkout from 'react-native-checkout';

export default function App() {
  return (
    <View style={styles.container}>
      <Text
        onPress={() => {
          Checkout.initiatePayment(
            'pk_test_f6fe424a-af09-43eb-b416-6c3badb7286d',
            'sandbox'
          );
        }}
      >
        Test
      </Text>
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
