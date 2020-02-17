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
    var business_type : Bool!    
    var policy:String!
    var address : AddressModel!
    
    init(fromDictionary dictionary:[String:Any]){
        first_name = dictionary["first_name"] as? String
        last_name = dictionary["last_name"] as? String
        email = dictionary["email"] as? String
        phone = dictionary["phone"] as? String
        password = dictionary["password"] as? String
        question = dictionary["question"] as? String
        answer = dictionary["answer"] as? String
        policy = dictionary["policy"] as? String
        business_type = dictionary["business_type"] as? Bool
        address = AddressModel.init(fromDictionary:dictionary)
    }
       
}
