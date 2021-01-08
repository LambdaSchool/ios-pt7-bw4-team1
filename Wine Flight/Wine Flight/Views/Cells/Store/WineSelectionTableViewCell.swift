//
//  WineSelectionTableViewCell.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineSelectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var wineImageView: UIImageView!
    @IBOutlet weak var wineLabel: UILabel!
    
    
    var wineSelection: WineSelection? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        wineImageView.image = wineSelection?.wineSelectionImage
        wineLabel.text = wineSelection?.wineSelectionName
    }
}
