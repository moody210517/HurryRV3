//
//  LoginRoot.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

class LoginRoot{
    
    var data:LoginData!
    var message:String!
    var success:String!
    
    init(fromDictionary dictionary:[String:Any]){
        if let dataData = dictionary["data"] as? [String:Any] {
            data = LoginData(fromDictionary:dataData)
        }
        message = dictionary["msg"] as? String
        success = dictionary["result"] as? String
    }
}

