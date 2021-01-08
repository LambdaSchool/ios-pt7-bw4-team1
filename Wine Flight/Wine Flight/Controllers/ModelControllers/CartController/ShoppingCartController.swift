//
//  CartController.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/5/21.
//

import Foundation


class ShoppingCartController{
    
    var products = ShoppingCart.products
    let deliveryAddress: String? = nil
    
    func addProductToTheCart(add product: Wine) {
        products.append(product)
        
    }
    
    func removeProductFromTheCart(remove index: Int) {
        products.remove(at: index)
    }
    //Get the current product id
    //Add the product to the cart
    //Display a message to the user
    
}
