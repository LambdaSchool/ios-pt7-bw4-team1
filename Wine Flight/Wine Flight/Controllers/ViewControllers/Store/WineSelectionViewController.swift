//
//  WineSelectionViewController.swift
//  Wine Flight
//
//  Created by James McDougall on 1/7/21.
//

import UIKit

class WineSelectionViewController: UIViewController {
    
    @IBOutlet weak var wineChoiceTableView: UITableView!
    
    var wineSelectionController = WineSelectionController()
    var wineCell = "WineCell"
    var wineDetailViewController = "WineDetailViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        wineChoiceTableView.delegate = self
        wineChoiceTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == wineDetailViewController {
            guard let wineDetailVC = segue.destination as? WineDetailViewController,
                  let indexPath = wineChoiceTableView.indexPathForSelectedRow else { return }
            
            let wine = wineSelectionController.wineSelection[indexPath.row]
            wineDetailVC.wineSelection = wine
        }
    }
    
}

extension WineSelectionViewController: UITableViewDelegate {
    
}

extension WineSelectionViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wineSelectionController.wineSelection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let selectedWineCell = wineChoiceTableView.dequeueReusableCell(withIdentifier: wineCell, for: indexPath) as? WineSelectionTableViewCell else { return UITableViewCell() }
        
        let myWine = wineSelectionController.wineSelection[indexPath.row]
        selectedWineCell.wineSelection = myWine
        
        return selectedWineCell
    }
}


