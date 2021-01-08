//
//  WineSelection.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineSelection {
    
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
    
    enum SelectionTypes: String {
        case NativAgliancio2013 = "2013 Nativ Agliancio"
        case SanSalvatoreRosatoVetere2019 = "2019 San Salvatore Rosato Vetere"
        case VinaSobreiraAlbarinoRiasBaixas = "2016 Vina Sobreira Albarino Rias Baixas"
        case LaCanaAlbarinoLaCanaNavia2017 = "2017 La Cana Albarino La Cana Navia"
        case IBrandLaMareaKristyVineyardAlbarino2019 = "2019I.BrandLaMarea'KristyVineyard'Albarino"
        case PazoDeSenoransAlbarinoRiasBaixas2019 = "2019 Pazo De Senorans Albarino Rias Baixas"
        case QuintaDeSoalheiroAlvarinho2019 = "2019 Quinta De Soalheiro Alvarinho"
        case ZarateAlbarinoRiasBaixas2019 = "2019 Zarate Albarino Rias Baixas"
        case DominioDelAguilaPicaroClareteRosatoRiberaDelDuero2015 = "2015 Dominio Del Aguila Picaro Clarete Rosato Ribera Del Duero"
        case BodegaPonceReto2019 = "2019 Bodega Ponce Reto"
        case EsporaoReservaRed2016 = "2016 Esporao Reserva Red"
        case CoelheirosTintoAragonezAlicanteBouchet2017 = "2017 Coelheiros Tinto (Aragonez Alicante Bouchet)"
        case PauloLaureanoVinhasVelhasOrganic2017 = "2017 Paulo Laureano Vinhas Velhas Organic"
        case DescendientesDeJosePalaciosBierzoPetalos2018 = "2018 Descendientes De Jose Palacios Bierzo Petalos"
    }
    
    var wineCategoryName: WineTypes
    var wineSelectionName: String
    var wineSelectionImage: UIImage
    var wineSelectionText: String
    var winePrice: Double
    
    init(wineCategoryName: WineTypes, wineSelectionName: String, wineSelectionImage: String, wineSelectionText: String, winePrice: Double) {
        self.wineCategoryName = wineCategoryName
        self.wineSelectionName = wineSelectionName
        self.wineSelectionImage = UIImage(named: wineSelectionImage)!
        self.wineSelectionText = wineSelectionText
        self.winePrice = winePrice
    }
    
}
