@objc(Checkout)
class Checkout: NSObject {
    let vc: CheckoutViewController = CheckoutViewController.init();
    @objc(initiatePayment:withEnvironment:withResolver:withRejecter:)
    func initiatePayment(publicKey: String, environment: String,
                         resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        
        do
        {
            DispatchQueue.main.async {
                self.vc.initiatePayment(publicKey: publicKey, environment: environment);
            }
            resolve(true);
        } catch {
            // Add dispach_queue
            DispatchQueue.main.async {
              print(error)
            }
            resolve(false);
        }
    }
}
