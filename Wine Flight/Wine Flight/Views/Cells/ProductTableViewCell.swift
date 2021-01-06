//
//  ProductTableViewCell.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 1/5/21.
//

//import UIKit
//
//protocol ProductCellDelegate: class {
//    func didUpdateProduct(product: Wine)
//}
//
//class ProductTableViewCell: UITableViewCell {
//
//    weak var delegate: ProductCellDelegate?
//
//    var product: Wine? {
//        didSet {
//            updateViews()
//        }
//    }
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//    private func updateViews() {
//        guard let image = product?.image,
//              let name = product?.name else { return }
//        productImage.image = image
//        productName.text = name
//
//
//    }
//    
//}
//
//
//}
