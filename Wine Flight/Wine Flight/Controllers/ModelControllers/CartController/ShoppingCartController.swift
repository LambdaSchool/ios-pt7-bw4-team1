//
//  CartController.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/5/21.
//

import Foundation


class ShoppingCartController{
    
    let deliveryAddress: String? = nil
    var winesController = WineSelectionController()
    var pickedWine = [WineSelection]()
    var total: Double = 0.0
    
    func addProductToTheCart() {
        let randomNumber = Int.random(in: 0...2)
        let wines = winesController.wineSelection
        pickedWine.append(wines[randomNumber])
        for item in pickedWine {
            total += item.winePrice
        }
    }
    
    func removeProductFromTheCart(remove product: Int) {
        pickedWine.remove(at: product)
        for item in pickedWine {
            total -= item.winePrice
        }
    }
    
    func countItems() {
      
    }
    
    //        let dictionary = pickedWine.reduce(into: [:]) { counts, number in
    //            counts[number, default: 0] += 1
    //        }
    //        print(dictionary)
}

//Display a message to the user

//extension Sequence where Element: Hashable {
//    var iteamized: [Element: Int] {
//        return self.reduce(into: [:]) { counts, elem in counts[elem, default: 0] += 1 }
//            }
//    }

extension WineSelection: Equatable, Hashable {
    static func == (lhs: WineSelection, rhs: WineSelection) -> Bool {
        return lhs.wineSelectionName.count == rhs.wineSelectionName.count && lhs.wineSelectionName.sorted() == rhs.wineSelectionName.sorted()
    }
    
    func hash(into hasher: inout Hasher) {
        var hashValue: Int {
            var hasher = Hasher()
            self.hash(into: &hasher)
            return hasher.finalize()
        }
    }
}
