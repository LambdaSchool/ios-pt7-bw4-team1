//
//  WineCategoryCollectionViewCell.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineCategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var wineImageView: UIImageView!
    @IBOutlet weak var darkOverlayView: UIView!
    @IBOutlet weak var wineCategoryLabel: UILabel!
    
    var customUI = CustomUI()
    
    var wineCategory: WineCategory? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let wineCategory = wineCategory else { return }
        
        wineImageView.image = wineCategory.wineImage
        wineCategoryLabel.text = wineCategory.wineType
        
        configureUI()
    }
    
    func configureUI() {
        customUI.roundedImage(image: wineImageView)
        customUI.roundedView(view: darkOverlayView)
    }
    
}
