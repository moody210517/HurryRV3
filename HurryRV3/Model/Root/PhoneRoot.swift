//
//  CityRoot.swift
//  HurryRV3
//
//  Created by my on 2020/2/16.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

class PhoneRoot{
                
    var phone:String!
    var success:String!
        
    init(fromDictionary dictionary:[String:Any]){       
        
        for dic in dictionary {
            phone = dic["PhoneNumber"] as? String            
        }        
        success = 200
    }
    
}
