//
//  CityModel.swift
//  HurryRV3
//
//  Created by my on 2020/2/16.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation

struct CityModel{
    
    var id : Int!
    var name: String!
    var lat: String!
    var lng: String!
    var geofence: String!
    var image : String!
    
    
    init(fromDictionary dictionary:[String:Any]){
        id = dictionary["id"] as? Int
        name = dictionary["name"] as? String
        lat = dictionary["lat"] as? String
        lng = dictionary["lng"] as? String
        geofence = dictionary["geofence"] as? String
        image = dictionary["image"] as? String
    }
    
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if id != nil{
            dictionary["id"] = id
        }
        if name != nil{
            dictionary["name"] = name
        }
        if(lat != nil){
            dictionary["lat"] = lat
        }
        
        if(lng != nil){
            dictionary["lng"] = lng
        }
        if(geofence != nil){
            dictionary["geofence"] = geofence
        }
        if(image != nil){
            dictionary["image"] = image
        }
        return dictionary
    }
    
    
}

