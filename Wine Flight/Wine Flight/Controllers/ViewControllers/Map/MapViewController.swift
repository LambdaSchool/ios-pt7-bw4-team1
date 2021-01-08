//
//  MapViewController.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/7/21.
//

import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var addressTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addressTextField.text = nil
    }
    override func viewWillDisappear(_ animated: Bool) {
        if addressTextField.text != nil {
            let tabBar = tabBarController as! CartTabViewController
        }
    }
  

}
