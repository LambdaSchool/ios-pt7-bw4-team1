//
//  WineCategory.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineCategory {
    
    enum WineTypes: String {
        case agliancio = "Agliancio"
        case albarino = "Albarino"
        case albillo = "Albillo"
        case alicanteBouschet = "Alicante Bouschet"
        case arneis = "Arneis"
        case blaufrankisch = "Blaufrankisch"
        case bourboulenc = "Bourboulenc"
        case cabernetFranc = "Cabernet Franc"
        case cabernetSauvignon = "Cabernet Sauvignon"
        case canaiolo = "Canaiolo"
        case carignan = "Carignan"
        case carmenere = "Carmenere"
        case chardonnay = "Chardonnay"
        case cheninBlanc = "Chenin Blanc"
        case cisnault = "Cisnault"
        case clairette = "Clairette"
        case corvina = "Corvina"
        case corvinone = "Corvinone"
        case furmint = "Furmint"
        case gamay = "Gamay"
        case grenache = "Grenache"
        case malbec = "Malbec"
        case merlot = "Merlot"
        case mouvedre = "Mouvedre"
        case petitVerdot = "Petit Verdot"
        case pinotNoir = "Pinot Noir"
        case sangiovese = "Sangiovese"
        case sauvignonBlanc = "Sauvignon Blanc"
        case shiraz = "Shiraz"
    }
    
    var wineType: String
    var wineImage: UIImage
    
    init(wineType: String, wineImage: String) {
        self.wineType = wineType
        self.wineImage = UIImage(named: wineImage)!
    }
    
}
