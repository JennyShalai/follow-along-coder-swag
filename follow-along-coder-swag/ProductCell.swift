//
//  ProductCell.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 6/30/22.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    

    func updateView(withProduct product: Product) {
        productImage.image = UIImage.init(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
