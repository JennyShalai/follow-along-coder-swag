//
//  ViewController.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 7/2/22.
//

import UIKit

class ProductViewController: UIViewController {
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initProducts(withCategory category: Category) {
        products = DataService.dataService.getProduct(byTitle: category.categoryTitle)
        
    }

}
