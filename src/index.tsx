import { NativeModules } from 'react-native';

type CheckoutType = {
  multiply(a: number, b: number): Promise<number>;
};

const { Checkout } = NativeModules;

export default Checkout as CheckoutType;
