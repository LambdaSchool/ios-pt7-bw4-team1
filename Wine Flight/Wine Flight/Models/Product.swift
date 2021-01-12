//
//  Product.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/8/21.
//

import Foundation

import UIKit

class Product {
    
//    let wineSelection: [WineSelection]
    let image: UIImage
    let amount: Int
    
    internal init( wineSelection: WineSelection, image: UIImage, amount: Int) {
//        self.wineSelection = WineSelectionController.wineSelection
        self.image = image
        self.amount = amount
    }
}


