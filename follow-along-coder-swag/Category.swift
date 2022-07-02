//
//  Category.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 6/29/22.
//

import Foundation

struct Category {
    
    private(set) var categoryTitle: String
    private(set) var categoryImage: String
    
    init(title: String, image: String) {
        self.categoryTitle = title
        self.categoryImage = image
    }
    
}
