//
//  ItemModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct DateModel{
    
     var date : String!
     var time : String!
          
     init(fromDictionary dictionary:[String:Any]){         
         date = dictionary["date"] as? String
         time = dictionary["time"] as? String                 
     }
    
    
    
    
    
}
