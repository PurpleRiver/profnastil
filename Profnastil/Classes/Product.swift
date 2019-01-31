//
//  Profnastil.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 08.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//
import UIKit
import Foundation

class Product {
    var name: String
    var image: [UIImage]?
    var description: String
    var parameter1: String
    var parameter2: String
    var parameter3: String?
    var parameter4: String?
    var parameter5: String?
    var price: String
    
    init(name: String, image: [UIImage], description: String, parameter1: String, parameter2: String, parameter3: String?, parameter4: String?, parameter5: String?, price: String) {
        self.name = name
        self.image = image
        self.description = description
        self.parameter1 = parameter1
        self.parameter2 = parameter2
        self.parameter3 = parameter3
        self.parameter4 = parameter4
        self.parameter5 = parameter5
        self.price = price
    }
        convenience init() {
            self.init(name: "", image: [], description: "", parameter1: "", parameter2: "", parameter3: "", parameter4: "", parameter5: "", price: "")
    }
}
