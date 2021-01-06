//
//  Cart.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/5/21.
//

import Foundation
import UIKit

struct Wine {
    let id: UUID = UUID()
    let name: String
    let price: Double
    let image: UIImage?
}

class ShoppingCart {
    
    static var products = Array<Wine>()
    
    let wineName: String
    let image: UIImage?
    let quanity: Int
    let price: Double
    
    let deliveryAddress: String
    
    init(wineName: String, image: UIImage? = nil, quanity: Int, price: Double, deliveryAddress: String) {
        self.wineName = wineName
        self.image = image
        self.quanity = quanity
        self.price = price
        self.deliveryAddress = deliveryAddress
    }
}
