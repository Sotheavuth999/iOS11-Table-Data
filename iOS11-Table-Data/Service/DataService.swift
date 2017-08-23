//
//  DataService.swift
//  iOS11-Table-Data
//
//  Created by Sotheavuth Nguon on 8/23/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.jpg"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.jpg"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.jpg"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.jpg")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.jpg"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.jpg"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.jpg"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.jpg")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.jpg"),
        Product(title: "Devslopes Logo Shirt Light Grey", price: "$18", imageName: "shirt02.jpg"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.jpg"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.jpg"),
        Product(title: "Kickflip Studio Black", price: "$18", imageName: "shirt05.jpg")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
