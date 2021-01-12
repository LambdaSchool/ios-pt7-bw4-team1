//
//  CheckoutWineDetailViewController.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/8/21.
//

import UIKit

class CheckoutWineDetailViewController: UIViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productDescription: UITextView!
    @IBOutlet weak var productPrice: UILabel!
    
    var cartController: ShoppingCartController?
    var wine: WineSelection? {
        didSet {
            updateViews()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard isViewLoaded,
              let wineToShow = wine else { return }
        title = wineToShow.wineSelectionName
        productImageView.image = wineToShow.wineSelectionImage
        productDescription.text = wineToShow.wineSelectionText
        productPrice.text = "$ \(String(describing: wineToShow.winePrice))"
    }
}
