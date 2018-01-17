//
//  DataService.swift
//  coder-swag
//
//  Created by Eric Masiello on 1/16/18.
//  Copyright © 2018 Eric Masiello. All rights reserved.
//

import Foundation

class DataService {
    // singleton
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    private let hats = [
        Product(title: "Devslopes Graphic Beenie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Stupid Beenie", price: "$28", imageName: "hat02.png"),
        Product(title: "Devslopes Weird Beenie", price: "$8", imageName: "hat03.png"),
        Product(title: "Devslopes Odd Beenie", price: "$38", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Graphic Hoodie", price: "$14", imageName: "hoodie01.png"),
        Product(title: "Devslopes Stupid Hoodie", price: "$28", imageName: "hoodie02.png"),
        Product(title: "Devslopes Weird Hoodie", price: "$18", imageName: "hoodie03.png"),
        Product(title: "Devslopes Odd Hoodie", price: "$22", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
        Product(title: "Devslopes Graphic Shirt", price: "$8", imageName: "shirt01.png"),
        Product(title: "Devslopes Stupid Shirt", price: "$7", imageName: "shirt02.png"),
        Product(title: "Devslopes Weird Shirt", price: "$15", imageName: "shirt03.png"),
        Product(title: "Devslopes Odd Shirt", price: "$31", imageName: "shirt04.png"),
        Product(title: "Devslopes Cool Shirt", price: "$11", imageName: "shirt05.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
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
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
