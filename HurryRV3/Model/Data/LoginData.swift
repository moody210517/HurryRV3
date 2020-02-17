//
//  LoginData.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct LoginData {
    
    var first_name : String!
    var last_name : String!
    var phone : String!
    var email : String!
    var password : String!
    var question : String!
    var answer : String!
    var isLogin : Bool!    
    
    init(fromDictionary dictionary:[String:Any]){
        first_name = dictionary["first_name"] as? String
        last_name = dictionary["last_name"] as? String
        email = dictionary["email"] as? String
            
    }
}
