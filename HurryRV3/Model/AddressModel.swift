//
//  ItemModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct AddressModel{
    
     var address : String!
     var address2: String!
     var city: String!
     var state: String!
     var pincode: String!
     var landmark: String!
     var id: String!
            
    init(fromDictionary dictionary:[String:Any]){
         id = dictionary["id"] as? String
         address = dictionary["address"] as? String
         address2 = dictionary["address2"] as? String
         city = dictionary["city"] as? String
         state = dictionary["state"] as? String
         pincode = dictionary["address"] as? String
         landmark = dictionary["landmark"] as? String
    }
        
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if id != nil{
            dictionary["id"] = id
        }
        
        if address != nil{
            dictionary["address"] = address
        }
        if address2 != nil{
            dictionary["address2"] = address2
        }
        if city != nil{
            dictionary["city"] = city
        }
        if state != nil{
            dictionary["state"] = state
        }
        if pincode != nil{
            dictionary["pincode"] = pincode
        }
        if landmark != nil{
            dictionary["landmark"] = landmark
        }
        return dictionary
    }
    
    
    
}
