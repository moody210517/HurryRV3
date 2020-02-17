//
//  ItemData.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct ItemData{

    var itemLists:[ItemModel]!
    init(fromDictionary dictionary:[String:Any]){
        itemLists = [ItemModel]()
        if let postArray = dictionary["items"] as? [[String:Any]]{
            for dic in postArray {
                let value = ItemModel(fromDictionary: dic)
                itemLists.append(value)
            }
        }
    }
        
        
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if itemLists != nil{
            var dictionaryElements = [[String:Any]]()
            for authorsElement in itemLists {
                dictionaryElements.append(authorsElement.toDictionary())
            }
            dictionary["items"] = dictionaryElements
        }
        
        return dictionary
    }
    
    
    
    
}
