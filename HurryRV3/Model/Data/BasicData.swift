//
//  BasicData.swift
//  HurryRV3
//
//  Created by my on 2020/2/16.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct BasicData{
    
    var basicLists:[BasicModel]!
    init(fromDictionary dictionary:[String:Any]){
        basicLists = [BasicModel]()
        if let postArray = dictionary["items"] as? [[String:Any]]{
            for dic in postArray {
                let value = BasicModel(fromDictionary: dic)
                basicLists.append(value)
            }
        }
        
        
    }
}
