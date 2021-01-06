//
//  WineHeader.swift
//  Wine Flight
//
//  Created by James McDougall on 1/5/21.
//

import UIKit

class WineCategory {
    var wine: WineType
    var image: UIImage
    
    init(wine: WineType, imageName: String) {
        self.wine = wine
        self.image = UIImage(named: imageName)!
    }
}
