//
//  WineCategoryViewController.swift
//  Wine Flight
//
//  Created by James McDougall on 1/5/21.
//

import UIKit

class WineCategoryViewController: UIViewController {
    
    //MARK: - IBOutlets -
    @IBOutlet weak var wineCategoryCollectionView: UICollectionView!
    
    //MARK: - UI properties -
    
    //MARK: - Functional properties -
    var wineCategoryController = WineCategoryController()
    let wineCell = "WineCell"
    

    //MARK: - App Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        wineCategoryCollectionView.dataSource = self
        wineCategoryCollectionView.delegate = self
    }
}

//MARK: - Extensions -
extension WineCategoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wineCategoryController.wines.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let wineCell = wineCategoryCollectionView.dequeueReusableCell(withReuseIdentifier: wineCell, for: indexPath) as? WineCategoryCollectionViewCell else { return UICollectionViewCell()}
        
        let wine = wineCategoryController.wines[indexPath.row]
        wineCell.wineCategory = wine
        
        return wineCell
    }
    
    
}
