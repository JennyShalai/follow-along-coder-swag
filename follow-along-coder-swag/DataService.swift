//
//  DataService.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 6/29/22.
//

import Foundation
class DataService {
    
    static let dataService = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", image: "shirts.png"),
        Category(title: "HOODIES", image: "hoodies.png"),
        Category(title: "HATS", image: "hats.png"),
        Category(title: "DIGITAL", image: "digital.png")]
    
    func getCategories() -> [Category]{
        return categories
    }
}
