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
    @IBOutlet weak var customerMessage: UITextView!
    @IBOutlet weak var applePayButton: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    
    let SupportedPaymentNetworks = [PKPaymentNetwork.visa, PKPaymentNetwork.masterCard, PKPaymentNetwork.amex]
    let ApplePaySwagMerchantID = "merchant.com.LambdaSchool.WineFlight2" // Fill in merchant ID here!
    let cartController = ShoppingCartController()
    var pickedWine: WineSelection?
    
    var deliveryAddress: String? {
        didSet {
            updateAddress()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productTableView.delegate = self
        productTableView.dataSource = self
        productTableView.backgroundColor = UIColor.clear
        productTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    
        
        applePayButton.isHidden = !PKPaymentAuthorizationViewController.canMakePayments(usingNetworks: SupportedPaymentNetworks)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        productTableView.reloadData()
    }

    
    // MARK: - Navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if  segue.identifier == "ToDetailVC",
            let destination = segue.destination as? CheckoutWineDetailViewController,
            let wineIndex = productTableView.indexPathForSelectedRow?.row
        {
        destination.wine = cartController.pickedWine[wineIndex]
        }
    

 }

    @IBAction func checkoutButtonPressed(_ sender: Any) {
        //Pass all textFields and wines through
        var price = 0.0
        for iteam in cartController.pickedWine {
            price = iteam.winePrice
        }
        
        
        let request = PKPaymentRequest()
        request.merchantIdentifier = ApplePaySwagMerchantID
        request.supportedNetworks = SupportedPaymentNetworks
        request.merchantCapabilities = PKMerchantCapability.capability3DS
        request.countryCode = "US"
        request.currencyCode = "USD"
        
        request.paymentSummaryItems = [
            PKPaymentSummaryItem(label: "Wine", amount: NSDecimalNumber(value: price)),
            PKPaymentSummaryItem(label: "WineFlight", amount: NSDecimalNumber(value: price))
        ]

        guard let applePayController = PKPaymentAuthorizationViewController(paymentRequest: request) else { return }
        applePayController.delegate = self
        self.present(applePayController, animated: true, completion: nil)
    }
    
//    func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
//        if successful place order {
//            self.dismiss(animated: true, completion: {
//        // navigate to home screen
//            })
//        } else if failed place order {
//            self.dismiss(animated: true, completion: {
//        // show errors
//             })
//        } else { // if cancelled
//            self.dismiss(animated: true)
//        }
//    }
    
    @IBAction func AddButtonPressed(_ sender: Any) {
        cartController.addProductToTheCart()
        productTableView.reloadData()
    }
    
    private func updateAddress() {
        addressLabel.text = cartController.deliveryAddress
    }
}


extension CartViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartController.pickedWine.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WineCartCell") else { fatalError("Cannot dequeue cell") }
        cell.contentView.backgroundColor = UIColor.clear
        cell.layer.cornerRadius = 8
        cell.textLabel?.text = cartController.pickedWine[indexPath.row].wineSelectionName
        cell.detailTextLabel?.text = "$\(cartController.pickedWine[indexPath.row].winePrice)"
        return cell
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        cartController.removeProductFromTheCart(remove: indexPath.item)
            productTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        
    }
    
}

extension CartViewController: PKPaymentAuthorizationViewControllerDelegate {
    func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: ((PKPaymentAuthorizationStatus) -> Void)) {
    completion(PKPaymentAuthorizationStatus.success)
  }
  
    func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
    controller.dismiss(animated: true, completion: nil)
  }
}
