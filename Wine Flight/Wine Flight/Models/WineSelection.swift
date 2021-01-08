//
//  WineSelection.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineSelection {
    
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
    
    var wineCategory: String
    var wineSelectionName: String
    var wineSelectionImage: UIImage
    
    init(wineCategory: String, wineSelectionName: String, wineSelectionImage: String) {
        self.wineCategory = wineCategory
        self.wineSelectionName = wineSelectionName
        self.wineSelectionImage = UIImage(named: wineSelectionImage)!
    }
    
}
