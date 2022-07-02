//
//  ViewController.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 7/2/22.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private(set) public var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func initProducts(withCategory category: Category) {
        products = DataService.dataService.getProduct(byTitle: category.categoryTitle)
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateView(withProduct: product)
            return cell
        } else {
           return ProductCell()
        }
    }
}
