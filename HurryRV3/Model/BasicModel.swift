//
//  BasicModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct BasicModel{
    
    var id : String!
    var title : String!
    
    init(fromDictionary dictionary:[String:Any]){
        id = dictionary["id"] as? String
        title = dictionary["title"] as? String
    }
    
    
}
