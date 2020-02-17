//
//  LoginRoot.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

class QuestionPhoneRoot{
        
    var question : String!
    var success : String!
    
    init(fromDictionary dictionary:[String:Any]){
        if let dataData = dictionary["data"] as? [String:Any] {            
           question = dataData["question"] as? [String:Any]           
        }
        success = dictionary["result"] as? String
    }
}

