//
//  CheckoutViewController.swift
//  react-native-checkout
//
//  Created by Mohammad Zain on 15/09/2021.
//

import Foundation
import Frames

class CheckoutViewController: UIViewController, CardViewControllerDelegate {

    // Create a CheckoutAPIClient instance with your public key.
    var checkoutAPIClient = CheckoutAPIClient(
        publicKey: "pk_test_f6fe424a-af09-43eb-b416-6c3badb7286d",
        environment: .live)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func onTapDone(controller: CardViewController, cardToken: CkoCardTokenResponse?, status: CheckoutTokenStatus) {

        // Called when the tokenization request has completed.
        print(cardToken ?? "cardToken is nil")
    }

    func onSubmit(controller: CardViewController) {

        // Called just before a create card token request is made.
    }
    
    func initiatePayment(publicKey: String, environment: String) {
        checkoutAPIClient = CheckoutAPIClient(
            publicKey: publicKey,
            environment: .sandbox);
        
        // Create the CardViewController.
        let cardViewController = CardViewController(
            checkoutApiClient: checkoutAPIClient,
            cardHolderNameState: .hidden,
            billingDetailsState: .hidden)

        // Set the CardViewController delegate.
        cardViewController.delegate = self

        // Replace the bar button with Pay.
        cardViewController.rightBarButtonItem = UIBarButtonItem(
            title: "Pay",
            style: .done,
            target: nil,
            action: nil)

        // (Optional) Specify which schemes are allowed.
        cardViewController.availableSchemes = [.visa, .mastercard]

        // Push the cardViewController onto the navigation stack.
        UIApplication.shared.delegate?.window??.rootViewController?.present(cardViewController, animated: true, completion: {
            print("done");
        })
//        navigationController?.pushViewController(cardViewController, animated: true)
    }
}
