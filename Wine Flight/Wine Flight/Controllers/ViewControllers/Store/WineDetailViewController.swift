//
//  WineDetailViewController.swift
//  Wine Flight
//
//  Created by James McDougall on 1/8/21.
//

import UIKit

class WineDetailViewController: UIViewController {
    
    
    @IBOutlet weak var wineImageView: UIImageView!
    @IBOutlet weak var wineNameLabel: UILabel!
    @IBOutlet weak var wineTextView: UITextView!
    @IBOutlet weak var winePriceLabel: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    var wineSelection: WineSelection?
    
    var customUI = CustomUI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wineImageView.image = wineSelection?.wineSelectionImage
        wineNameLabel.text = wineSelection?.wineSelectionName
        wineTextView.text = wineSelection?.wineSelectionText
        winePriceLabel.text = "$\(wineSelection?.winePrice ?? 0)"

        configureUI()
    }
    
    func configureUI() {
        customUI.roundedButton(button: addToCartButton)
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addToCartButtonTapped(_ sender: UIButton) {
        
    }
    
}
