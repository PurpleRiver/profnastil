//
//  Stores.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 29.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import Foundation

class Store {
    var city: String?
    var adress: String?
    var payment: String?
    var timeOfWork: String?
    var phoneNumbers: String?
    var phoneNumberToCall: String?
    var email: String?
    var latitude: Double
    var longitude: Double
    
    init(city: String, adress: String, payment: String, timeOfWork: String, phoneNumbers: String, phoneNumberToCall: String, email: String, latitude: Double, longitude: Double) {
        self.city = city
        self.adress = adress
        self.payment = payment
        self.timeOfWork = timeOfWork
        self.phoneNumbers = phoneNumbers
        self.phoneNumberToCall = phoneNumberToCall
        self.email = email
        self.latitude = latitude
        self.longitude = longitude
}
    convenience init() {
        self.init(city: "", adress: "", payment: "", timeOfWork: "", phoneNumbers: "", phoneNumberToCall: "", email: "", latitude: 0, longitude: 0)
    }
}
