//
//  BasicRoot.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct ReviewRoot{

    var track_id:String!    
    var order_id:String!
    var success:String!
    var message:String!
        
    init(fromDictionary dictionary:[String:Any]){                               
        success = dictionary["result"] as? String
        if(success == "400"){
            message = "Fail";
        }else if(success == "300"){
            message = "Already Exist";
        }else{
            track_id = dictionary["track_id"] as? String
            order_id = dictionary["order_id"] as? String
        }
    }
    
}
