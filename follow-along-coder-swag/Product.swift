//
//  Product.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 6/30/22.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(withTitle title: String, price: String, image: String) {
        self.title = title
        self.price = price
        self.imageName = image
    }
    
    
}
