//
//  ItemModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct ItemModel{
    
     var id : String!
     var title: String!
            
     init(fromDictionary dictionary:[String:Any]){
         id = dictionary["id"] as? String
         title = dictionary["title"] as? String
     }
    
    func toDictionary() -> [String:Any]
      {
          var dictionary = [String:Any]()
          if id != nil{
              dictionary["id"] = id
          }
          if title != nil{
              dictionary["title"] = title
          }
          return dictionary
      }
    
    
    
}
