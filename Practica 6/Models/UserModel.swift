//
//  UserModel.swift
//  Practica 6
//
//  Created by Joel Garcia on 6/14/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import Foundation
import SwiftyJSON

class UserModel {
    var id: Int?
    var name: String?
    var username: String?
    var phone: String?
    var street: String?
    var city:String?
    var lat: Double?
    var lon: Double?
    
    init(object: JSON){
        id = object["id"].intValue
        name = object["name"].stringValue
        username = object["username"].stringValue
        phone = object["phone"].stringValue
        street = object["address"]["street"].stringValue
        city = object["address"]["city"].stringValue
        //Llenar los de lat y lon
        lat = object["address"]["geo"]["lat"].doubleValue
        lon = object["address"]["geo"]["lng"].doubleValue
    
        
        
        
    }
    
}
