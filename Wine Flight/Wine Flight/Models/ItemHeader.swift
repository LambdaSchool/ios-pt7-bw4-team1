//
//  WineHeader.swift
//  Wine Flight
//
//  Created by James McDougall on 1/5/21.
//

import UIKit

class WineHeader {
    var wine: Wine
    var image: UIImage
    
    init(wine: Wine, imageName: String) {
        self.wine = wine
        self.image = UIImage(named: imageName)!
    }
}
