//
//  DataService.swift
//  coder-swag
//
//  Created by Abdallah Ali on 9/7/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
  private  let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
 private let hats = [
    Product(title: "Deveslopes logo graphic panie", price: "$18", imageName: "hat01.png"),
    Product(title: "Deveslops logo black hat ", price: "$22", imageName: "hat02.png"),
    Product(title: "Deveslops logo white  hat ", price: "$22", imageName: "hat03.png"),
    Product(title: "Deveslops logo snapack ", price: "$20", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Deveslopes logo hoodie grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Deveslopes logo hoodie red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Deveslopes  hoodie smart", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Deveslopes logo hoodie black", price: "$32", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
     Product(title: "Deveslopes logo shirt black", price: "$18", imageName: "shirt01.png"),
     Product(title: "Deveslopes badge shirt light grey", price: "$18", imageName: "shirt02.png"),
     Product(title: "Deveslopes logo shirt red", price: "$18", imageName: "shirt03.png"),
     Product(title: "hustel delegate grey", price: "$18", imageName: "shirt04.png"),
     Product(title: "kickslops studios black ", price: "$18", imageName: "shirt05.png"),
    ]
    
    private let digital = [Product]()
    
    func getCategories()->[Category]{
        return categories
    }
    
    
    func getProducts(forCtegoryTitle title : String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
            
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digital
    }
}
