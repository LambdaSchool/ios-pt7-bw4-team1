//
//  WineCategoryCollectionViewCell.swift
//  Wine Flight
//
//  Created by James McDougall on 1/5/21.
//

import UIKit

class WineCategoryCollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var backgroundWineCategoryView: UIView!
    @IBOutlet weak var wineCategoryImageView: UIImageView!
    @IBOutlet weak var darkOverlayView: UIView!
    @IBOutlet weak var wineCategoryLabel: UILabel!
    //MARK: - Properties -
    var customUI = CustomUI()

    var wineCategory: WineCategory? {
        didSet {
            updateViews()
            configureUI()
        }
    }
        
    //MARK: - Helper Methods -
    func updateViews() {
        guard let wineCategory = wineCategory else { return }
        
        wineCategoryImageView.image = wineCategory.image
        wineCategoryLabel.text = wineCategory.wine.rawValue
    }
    
    func configureUI() {
        customUI.roundedView(view: backgroundWineCategoryView)
        customUI.roundedImage(image: wineCategoryImageView)
        customUI.roundedView(view: darkOverlayView)
    }
    
}
