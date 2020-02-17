//
//  ItemModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct ServiceModel{
    
     var name : String!
     var price : String!
     var time_in : String!
     

    init(fromDictionary dictionary:[String:Any]){
         
         name = dictionary["service_name"] as? String
         price = dictionary["service_price"] as? String
         time_in = dictionary["service_timein"] as? String
        
    }
    
            
    
}
