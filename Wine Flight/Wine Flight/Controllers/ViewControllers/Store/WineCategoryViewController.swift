//
//  WineCategoryViewController.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineCategoryViewController: UIViewController {

    @IBOutlet weak var wineCategoryCollectionView: UICollectionView!
    
    let wineCategoryCell = "WineCategoryCell"
    var wineCategoryController = WineCategoryController()
    var customUI = CustomUI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wineCategoryCollectionView.delegate = self
        wineCategoryCollectionView.dataSource = self
    }
}

extension WineCategoryViewController: UICollectionViewDelegate {
    
}

extension WineCategoryViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wineCategoryController.wines.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let wineCell = wineCategoryCollectionView.dequeueReusableCell(withReuseIdentifier: wineCategoryCell, for: indexPath) as? WineCategoryCollectionViewCell else { return UICollectionViewCell() }
        
        let wineSelection = wineCategoryController.wines[indexPath.item]
        
        wineCell.wineCategory = wineSelection
        return wineCell
    }
    
    
}
