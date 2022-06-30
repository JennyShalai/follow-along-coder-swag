//
//  CategoryCell.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 6/29/22.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateCell(withCategory category: Category) {
        
        categoryImage.image = UIImage(named: category.categoryImage)
        categoryTitle.text = category.categoryTitle
    }

}
