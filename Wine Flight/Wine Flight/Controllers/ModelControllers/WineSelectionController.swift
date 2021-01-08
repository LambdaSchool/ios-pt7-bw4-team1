//
//  WineSelectionController.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import Foundation

class WineSelectionController {
    
    var wineSelection: [WineSelection] = [
        //Agliancio
        WineSelection(wineCategoryName: .agliancio,
                      wineSelectionName: "2013 Nativ Agliancio",
                      wineSelectionImage: "2013 Nativ Agliancio",
                      wineSelectionText: "Aglianico is deep, intense ruby purple in color. This hearty red wine has rich aromas of black fruit such as blackcurrants and blackberries along with spicy notes of cocoa and smoke. The tannins are ripe, soft and make for a long, full-bodied texture yet balanced by good acidity which gives it a true sense of finesse. This robust red is a perfect match with grilled or braised red meat, osso buco, hearty legume-based soups and medium-aged herbed cheeses.",
                      winePrice: 13.98),
        WineSelection(wineCategoryName: .agliancio,
                      wineSelectionName: "2019 San Salvatore Rosato Vetere",
                      wineSelectionImage: "2019 San Salvatore Rosato Vetere",
                      wineSelectionText: "The aromas on the 2019 San Salvatore Vetere reminds me more of food than wine, and I mean that in the best possible way, as it pulls me closer to the glass with a display of savory herbs and citrus, blossoming further to reveal young peach with peppery florals and a hint of undergrowth. It washes across the palate with feminine weight, as a mix of ripe orchard fruits greet the senses, framed by brisk acids and a hint of subtle sweet spice. The finish is medium in length, taking on an almost-salty character, which only further accentuates the savory qualities of this Aglianico Rosato. Very nice.",
                      winePrice: 19.99),
        //Albarino
        WineSelection(wineCategoryName: .albarino,
                      wineSelectionName: "2019 Quinta De Soalheiro Alvarinho",
                      wineSelectionImage: "2019 Quinta De Soalheiro Alvarinho",
                      wineSelectionText: "The 2019 Alvarinho, the so-called unoaked classico, is dry (three grams of residual sugar and 6.9 grams of total acidity) and comes in at 12.5% alcohol. On paper, this has a somewhat crisper demeanor than the 2018. Due to more cool days in 2019 and a harvest in the first week of September, the winery said the acidity was slightly higher with lower pH, and in their opinion, that contributed to the profile of Soalheiro. Comparing this to the Granit, as always, leads you to two completely different wines. The Granit seems lighter, tenser and more energetic. It is precise and focused. This does all that too, but the balance with the fruit is different—often, I say better, but not this year. The expression of fruit here is pure Alvarinho, but the Granit is no slouch. This Classico is ripe but lifted, though. It's pretty tasty in its youth too. Like the Granit, though, this might be better next year—although this is more approachable. They both will age well, as the winery's track record in general has frequently demonstrated over the years. (I still like to stay conservative in the drinking windows. You might not think 11 years is conservative for a Vinho Verde, but here it might well be.) This looks terrific this year, and it's a typically super value.",
                      winePrice: 17.99),
        WineSelection(wineCategoryName: .albarino,
                      wineSelectionName: "2016 Vina Sobreira Albarino Rias Baixas",
                      wineSelectionImage: "2016 Vina Sobreira Albarino Rias Baixas",
                      wineSelectionText: "Small family owned producer in Pontevedra making traditional Albariños. The 2016 has hints of tropical fruits with a nice balance of acidity and fruit. A long finish satisfies the palate. Great with shell fish.",
                      winePrice: 11.99),
        WineSelection(wineCategoryName: .albarino,
                      wineSelectionName: "2017 La Cana Albarino La Cana Navia",
                      wineSelectionImage: "2017 La Cana Albarino La Cana Navia",
                      wineSelectionText: "100% of the wine is fermented in first, second, and third use French oak Burgundian puncheons (500L) and demi-muids (600L). The wine is aged sur lie for 10 months before bottling. The goal is to produce a serious wine – not a commercial one. Sur lie ageing adds an ageability, seriousness, and structure to the profile of the wine. The use of oak is not to impart any flavor, but to provide the perfect vessel for sur lie ageing. Slight micro-oxygenation through the barrels prevents the risk of reduction that a winemaker runs with stainless steel sur lie ageing. A very Burgundian style of Albariño. - Winemakers Notes",
                      winePrice: 25.99),
        WineSelection(wineCategoryName: .albarino,
                      wineSelectionName: "2019 I. Brand LaMarea 'KristyVineyard' Albarino",
                      wineSelectionImage: "2019 I. Brand LaMarea 'KristyVineyard' Albarino",
                      wineSelectionText: "Rainy cement, Meyer lemon rind and very tight apple aromas show on the nose of this single-vineyard expression. The palate shows both brisk, sizzling acidity and warmer tones of baked pear, with a taut texture holding firm into the bubblegum-kissed finish. -MK",
                      winePrice: 21.99),
        WineSelection(wineCategoryName: .albarino,
                      wineSelectionName: "2019 Pazo De Senorans Albarino Rias Baixas",
                      wineSelectionImage: "2019 Pazo De Senorans Albarino Rias Baixas",
                      wineSelectionText: "Palid straw yellow with greenish glints. Medium-high intensity. The balance of acidity assigns a structure of great volume to the wine improves its traces until the retro nasal. -Winery",
                      winePrice: 21.95),
        WineSelection(wineCategoryName: .albarino,
                      wineSelectionName: "2019 Zarate Albarino Rias Baixas",
                      wineSelectionImage: "2019 Zarate Albarino Rias Baixas",
                      wineSelectionText: "The eponymous 2019 Zárate is their entry-level Albariño, a vintage with structure and acidity, still very young, a powerful vintage with more of everything and probably a long-distance runner. It's varietal and clean, characterful, powerful and with a long, tasty finish, vibrant and almost salty. 64,000 bottles produced. It was bottled in March 2020.",
                      winePrice: 17.99),
        //Albillo
        WineSelection(wineCategoryName: .albillo,
                      wineSelectionName: "2015 Dominio Del Aguila Picaro Clarete Rosato Ribera Del Duero",
                      wineSelectionImage: "2015 Dominio Del Aguila Picaro Clarete Rosato Ribera Del Duero",
                      wineSelectionText: "The delicious rose-like 2015 Picaro del Aguila Clarete was produced with the juice of about one-third Tempranillo, one-third Albillo and one-third other grapes from old vines planted in certified organically farmed old vineyards. So, it's not a rose, it's a clarete, fermented in oak vats for eight to nine months and matured for a further 16 months in oak barrels. Even within the rounder style of 2015, the Clarete seems to have bright freshness, and the wine feels very lively, intense and nuanced, still young. This is delicious, but my experience tells me this wine will be even better in a couple more years. I've had wines like these 15 years after the vintage, and they develop more finesse and feel more like a white. This is more polished and approachable than previous vintages. It's hard to find someone who doesn't like or is not impressed by this wine. I wish more were produced in this style. 6,435 bottles and 85 magnums were filled in January 2017.",
                      winePrice: 29.00),
        WineSelection(wineCategoryName: .albillo,
                      wineSelectionName: "2019 Bodegs Ponce Reto",
                      wineSelectionImage: "2019 Bodegs Ponce Reto",
                      wineSelectionText: "Reto is the first white wine made in our winery. It is produced from 4 different vineyards between 40 and 60 years old. Grape varietal is Albilla and vineyard soil is mainly calcareous. Wine is aged for 8 months in old barrels 600-700 liter capacity. This wine is dominated by stony minerals, crisp citrus fruits and zippy acidity. This is cool climate white at it’s best. Notes of herbs and sea spray poke through on the crisp, clean, dry finish. Perfect alternative to top shelf Sancerre that has the potential to age, and improve, over the next 3-5 years. -Importer",
                      winePrice: 19.99),
        //Alicante Bouschet
        WineSelection(wineCategoryName: .alicanteBouschet,
                      wineSelectionName: "2016 Esporao Reserva Red",
                      wineSelectionImage: "2016 Esporao Reserva Red",
                      wineSelectionText: "The 2016 Reserva red is roughly an equal blend of Aragonez and Trincadeira, with most of the last 20% being Alicante Bouschet and a dollop of Cabernet Sauvignon, all aged for 12 months in one-third new oak (60/40 American and French). It comes in at 14.5% alcohol. The Alicante may be a smaller amount here, but it seems to mark the wine strongly in flavor. The assertive power from all the grapes gives this quite a serious backbone, but the mid-palate is well up to the task of matching it. The fruit lingers beautifully on the finish. This may age better than indicated, and there won't be much problem keeping it for about a decade. It seems like the best in a while, even as many producers in the region complain about the vintage.",
                      winePrice: 15.99),
        WineSelection(wineCategoryName: .alicanteBouschet,
                      wineSelectionName: "2017 Coelheiros Tinto (AragonezAlicanteBouchet)",
                      wineSelectionImage: "2017 Coelheiros Tinto (AragonezAlicanteBouchet)",
                      wineSelectionText: "Coelheiros red reveals the vigorous character of Aragonêz while presenting the silky texture and density of Alicante Bouschet, two typical Alentejo varieties. The grapes come from the emblematic Vinha do Taco and Vinha da Sobreira. These vineyards are non-irrigated, and therefore have profound root systems which allows for a good maturation of the grapes. Fermented with indigenous yeasts to best express our vineyards and soils. Aged for one year in used barrels. The nose reveals red fruit aromas with slight notes of spices and smoke. The palate has richness and density, showing a good balance between its acidity and fine tannins. It has a long and persistent finish. -Winery",
                      winePrice: 15.99),
        WineSelection(wineCategoryName: .alicanteBouschet,
                      wineSelectionName: "2017 Paulo Laureano Vinhas Velhas Organic",
                      wineSelectionImage: "2017 Paulo Laureano Vinhas Velhas Organic",
                      wineSelectionText: "The 2016 Private Selection Vinhas Velhas is a blend from old vines of 25% Alicante Bouschet, 20% Aragonez, 20% Touriga Nacional and 35% Trincadeira. It was aged for ten to 12 months, depending on lot, in new French oak. It comes in at 14.5% alcohol. This is meant to be the winery's Reserva, a classification no longer used by Laureano because many inexpensive (and poor quality) wines can be Reservas. A bit lusher and more restrained than the 2015, this is still nicely structured and concentrated. The fruit is not quite expressive yet, but there are hints it will be. Another year or two in the cellar would help this, and it should age for a decade or so, at least, after that. You can dive in now if you want to, though.",
                      winePrice: 19.98),
        WineSelection(wineCategoryName: .alicanteBouschet,
                      wineSelectionName: "2018 Descendientes De Jose Palacios Bierzo Petalos",
                      wineSelectionImage: "2018 Descendientes De Jose Palacios Bierzo Petalos",
                      wineSelectionText: "Their regional wine achieves unheard of levels of complexity and nuance with the 2018 Pétalos del Bierzo. It's a blend from over 90 hectares of vineyards in different part of Bierzo, 20% of the grapes from their own vineyards in Corullón, including some 4% white grapes. The rest is purchased from 180+ families with whom they have a long-term relationship. Some of these vineyards are not yet certified organic, but the objective is to achieve it in the next five years. It's mostly Mencía, but there are other grapes varieties in the vineyards; they estimate about 3% of other reds, Alicante Bouschet, Gran Negro, Pan y Carne, Negreda, etc. and around 4% whites, Valenciana, Jerez and Godello, half from Corullón and the other half from other villages. The grapes were partly destemmed and fermented in open-top stainless steel and oak vats with 25 days of maceration where the wine underwent a slow three-month malolactic. It matured in barrel for 12 months. This is the wine that showcases the house style and the character of the vintage, which, in this case, is delicate and very much from the zone. There is an aromatic purity and elegance that is very captivating with a faint flinty background, the cherry essence (Mediterranean) and a touch of fern (Atlantic) plus a honeyed twist that shows up after a couple of hours in the glass. It has a silky texture, soft and caressing, with very fine tannins and the faint bitter twist in the finish. In an ideal world, this should be the first wine people drink from Bierzo, and fortunately, in many cases, it is, given the availability, even if they did a more severe selection. This is approachable now but would be better in one year, and it's going to live in bottle. 282,038 bottles and 2,500 magnums produced. It was bottled between December 2019 and January 2020. -- LG",
                      winePrice: 15.75)
    ]
}
