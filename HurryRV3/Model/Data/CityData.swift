//
//  CityData.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation


struct CityData{
        
    var cityLists:[CityModel]!
    var success : String!
        
    init(fromDictionary dictionary:[String:Any]){
       cityLists = [CityModel]()
       if let postArray = dictionary["cities"] as? [[String:Any]]{
           for dic in postArray {
               let value = CityModel(fromDictionary: dic)
               cityLists.append(value)
           }
       }
       success = dictionary["result"] as? String
    }
    
    
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if cityLists != nil{
            var dictionaryElements = [[String:Any]]()
            for authorsElement in cityLists {
                dictionaryElements.append(authorsElement.toDictionary())
            }
            dictionary["cities"] = dictionaryElements
        }
        
        if(success != nil){
            dictionary["success"] = success
            
        }
        
        return dictionary
    }
    
    
    
}
