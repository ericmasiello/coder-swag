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
    
    func getCategories() -> [Category] {
        return categories
    }
}
