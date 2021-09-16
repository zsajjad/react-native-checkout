import { NativeModules } from 'react-native';

type CheckoutType = {
  initiatePayment(
    publicKey: string,
    environment: 'sandbox' | 'live'
  ): Promise<number>;
};

const { Checkout } = NativeModules;

export default Checkout as CheckoutType;
