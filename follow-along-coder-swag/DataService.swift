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
    
    private let hats = [
        Product(withTitle: "Devslopes Logo Graphic Beanie", price: "$18", image: "hat01.png"),
        Product(withTitle: "Devslopes Logo Hat Black", price: "$22", image: "hat02.png"),
        Product(withTitle: "Devslopes Logo Hat White", price: "$22", image: "hat03.png"),
        Product(withTitle: "Devslopes Logo Snapback", price: "$20", image: "hat04.png")]
    
    private let hoodies = [
        Product(withTitle: "Devslopes Logo Hoodie Grey", price: "$32", image: "hoodie01.png"),
        Product(withTitle: "Devslopes Logo Hoodie Red", price: "$32", image: "hoodie02.png"),
        Product(withTitle: "Devslopes Hoodie Red", price: "$32", image: "hoodie03.png"),
        Product(withTitle: "Devslopes Hoodie Black", price: "$32", image: "hoodie04.png")]
    
    private let shirts = [
        Product(withTitle: "Devslopes Logo Shirt Black", price: "$18", image: "shirt01.png"),
        Product(withTitle: "Devslopes Badge Shirt Light Grey", price: "$18", image: "shirt02.png"),
        Product(withTitle: "Devslopes Logo Shirt Red", price: "$18", image: "shirt03.png"),
        Product(withTitle: "Hustle Delegate Grey", price: "$18", image: "shirt04.png"),
        Product(withTitle: "Kickflip Studio Black", price: "$19", image: "shirt05.png")]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProduct(byTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "DIGITAL":
            return digitalGoods
        case "SHIRTS":
            return shirts
        default:
            return [Product]()
        }
        
    }
}
