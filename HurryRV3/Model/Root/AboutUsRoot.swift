//
//  BasicRoot.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct AboutUsRoot{
        
    var message:String!
    var success:String!
        
    init(fromDictionary dictionary:[String:Any]){
                       
        message = dictionary["result"] as? String
        success = "200"
    }
    
}
