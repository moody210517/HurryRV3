//
//  ItemModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct DeliveryAddressModel{
    

     var s_address : String!
     var s_area : String!
     var s_city: String!
     var s_state: String!
     var s_pincode: String!
     var s_phone: String!
     var s_name: String!
     var s_landmark: String!
     var s_instruction: String!
     var s_lat: String!
     var s_lng: String!

     var d_address : String!
     var d_area : String!
     var d_city: String!
     var d_state: String!
     var d_pincode: String!
     var d_phone: String!
     var d_name: String!
     var d_landmark: String!
     var d_instruction: String!
     var d_lat: String!
     var d_lng: String!
        
    init(fromDictionary dictionary:[String:Any]){
         s_address = dictionary["s_address"] as? String
         s_area = dictionary["s_area"] as? String
         s_city = dictionary["s_city"] as? String
         s_state = dictionary["s_state"] as? String
         s_pincode = dictionary["s_pincode"] as? String
         s_phone = dictionary["s_phone"] as? String
         s_name = dictionary["s_phone"] as? String
         s_landmark = dictionary["s_landmark"] as? String
         s_instruction = dictionary["s_instruction"] as? String
         s_lat = dictionary["s_lat"] as? String
         s_lng = dictionary["s_lng"] as? String

         d_address = dictionary["d_address"] as? String
         d_area = dictionary["d_area"] as? String
         d_city = dictionary["d_city"] as? String
         d_state = dictionary["d_state"] as? String
         d_pincode = dictionary["d_pincode"] as? String
         d_phone = dictionary["d_phone"] as? String
         d_name = dictionary["d_phone"] as? String
         d_landmark = dictionary["d_landmark"] as? String
         d_instruction = dictionary["d_instruction"] as? String
         d_lat = dictionary["d_lat"] as? String
         d_lng = dictionary["d_lng"] as? String

    }
        
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if id != nil{
            dictionary["id"] = id
        }
      
        return dictionary
    }
    
    
    
}
