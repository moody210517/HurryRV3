//
//  CityRoot.swift
//  HurryRV3
//
//  Created by my on 2020/2/16.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

class CityRoot{
            
    var data:CityModel!
    var message:String!
    var success:String!
        
    init(fromDictionary dictionary:[String:Any]){
        if let dataData = dictionary["cities"] as? [[String:Any]] {
            data = CityData(fromDictionary:dataData)
        }
        message = dictionary["msg"] as? String
        success = dictionary["result"] as? String
    }
    
}
