//
//  CartViewController.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/4/21.
//

import UIKit
import PassKit

class CartViewController: UIViewController {

    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var deliveryAddressTextField: UITextField!
    @IBOutlet weak var customerMessage: UITextView!
    @IBOutlet weak var applePayButton: UIButton!

    
    let SupportedPaymentNetworks = [PKPaymentNetwork.visa, PKPaymentNetwork.masterCard, PKPaymentNetwork.amex]
    let ApplePaySwagMerchantID = "merchant.com.LambdaSchool.WineFlight2" // Fill in merchant ID here!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productTableView.delegate = self
        productTableView.dataSource = self
    
        
        applePayButton.isHidden = !PKPaymentAuthorizationViewController.canMakePayments(usingNetworks: SupportedPaymentNetworks)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func checkoutButtonPressed(_ sender: Any) {
        //Pass all textFields and wines through
        let request = PKPaymentRequest()
        request.merchantIdentifier = ApplePaySwagMerchantID
        request.supportedNetworks = SupportedPaymentNetworks
        request.merchantCapabilities = PKMerchantCapability.capability3DS
        request.countryCode = "US"
        request.currencyCode = "USD"
        request.paymentSummaryItems = [
            PKPaymentSummaryItem(label: "Wine", amount: 11.11),
            PKPaymentSummaryItem(label: "WineFlight", amount: 11.11)
        ]
        request.requiredShippingAddressFields = PKAddressField.all
        guard let applePayController = PKPaymentAuthorizationViewController(paymentRequest: request) else { return }
        self.present(applePayController, animated: true, completion: nil)
    }
}


extension CartViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WineCartCell") else { fatalError("Cannot dequeue cell") }
        
        cell.textLabel?.text = "Chardonney"
        cell.detailTextLabel?.text = "x 3"
        
        return cell
        
    }
    
    
}
