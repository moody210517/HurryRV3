//
//  ItemModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct ProductModel{

     var product_type : Int!
     
     var image : String!
     var quantity : String!
     var weight: String!

     var tilte : String!
     var package_cost : String!

     var dimension1: String!
     var dimension2 : String!
     var dimension3: String!

     var weight_value: Int!
     var mPackage: String!

     init(fromDictionary dictionary:[String:Any]){
         
         product_type = dictionary["product_type"] as? String
         title = dictionary["title"] as? String
         image = dictionary["image"] as? String
         quantity = dictionary["quantity"] as? String
         weight = dictionary["weight"] as? String
         package_cost = dictionary["package_cost"] as? String
         dimension1 = dictionary["dimension"] as? String
         dimension2 = dictionary["dimension"] as? String
         dimension3 = dictionary["dimension"] as? String
         weight_value = dictionary["weight"] as? String
         mPackage = dictionary["image"] as? String

     }
    
    
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        
        if title != nil{
            dictionary["title"] = title
        }
        if image != nil{
            dictionary["image"] = image
        }
        if quantity != nil{
            dictionary["quantity"] = quantity
        }
        if weight != nil{
            dictionary["weight"] = weight
        }

        return dictionary
    }
    
    
    
}
