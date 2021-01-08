//
//  WineDetail.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineDetail {
    var wineImage: UIImage
    var wineName: WineSelection.SelectionTypes.RawValue
    var wineDescription: String
    var winePrice: Double
    
    init(wineImage: String, wineName: WineSelection.SelectionTypes.RawValue, wineDescription: String, winePrice: Double) {
        self.wineImage = UIImage(named: wineImage)!
        self.wineName = wineName
        self.wineDescription = wineDescription
        self.winePrice = winePrice
    }
    
}
