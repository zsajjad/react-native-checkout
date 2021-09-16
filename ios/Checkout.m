#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Checkout, NSObject)

RCT_EXTERN_METHOD(initiatePayment:(NSString)publicKey
                  withEnvironment:(NSString)environment
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

@end
