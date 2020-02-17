//
//  ItemData.swift
//  HurryRV3
//
//  Created by my on 2020/2/17.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct OrderHistoryData{

    var id : String!
    var track : String!
    var payment : String!
    var accepted_by : String!
    var state : String!
    var is_quote_request : String!
    var price : String!
    var transaction_id : String!
      
    var date : [DateModel]!
    var service : [ServiceModel]!
    var deliveryAddress : [DeliveryAddressModel]    
    var productLists:[ProductModel]!

    init(fromDictionary dictionary:[String:Any]){

        id = dictionary["id"] as? String!
        track = dictionary["track"] as? String
        payment = dictionary["payment"] as? String
        accepted_by = dictionary["accepted_by"] as? String
        state = dictionary["state"] as? String
        is_quote_request = dictionary["is_quote_request"] as? String
        price = dictionary["is_quote_request"] as? String
        transaction_id = dictionary["is_quote_request"] as? String

        date = DateModel(fromDictionary: dictionary)
        service = ServiceModel(fromDictionary: dictionary)
        
        if let postArray = dictionary["address"] as? [[String:Any]]{
            for address in postArray {                
                deliveryAddress = DeliveryAddressModel(fromDictionary: address)                
            }
        }

        productLists = [ProductModel]()
        if let postArray = dictionary["products"] as? [[String:Any]]{
            for dic in postArray {
                let value = ProductModel(fromDictionary: dic)
                productLists.append(value)
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
