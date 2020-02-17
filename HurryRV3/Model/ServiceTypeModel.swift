//
//  ItemModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct ServiceTypeModel{
     
     var expedited : String!
     var express : String!
     var economy : String!
     var distance : String!
     

    init(fromDictionary dictionary:[String:Any]){
         
         expedited = dictionary["expedited"] as? String
         express = dictionary["express"] as? String
         economy = dictionary["economy"] as? String
         distance = dictionary["distance"] as? String
        
    }
    
            
    
}
