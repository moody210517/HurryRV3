//
//  UserHandler.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation
import Alamofire


class BasicHandler{
    
    static let sharedInstance = UserHandler()
    
    var objLoginDetails : LoginData?
    
    class func getBasicData(success: @escaping(BasicRoot)->Void, failure:@escaping(NetworkError) ->Void){
        let url = Constants.URL.BASE_DATA_URL + "get_basic"        
        print(url)
        NetworkHandler.postRequest(url: url, parameters: nil, success:{(successRes) in
            let dictionary = successRes as! [String:Any]
            let data  = BasicRoot(fromDictionary: dictionary)
            success(data)
        }, failure: {(error) in
            
        });
    }
            
    class func getCity(success: @escaping(CityData)->Void, failure:@escaping(NetworkError) ->Void){
        let url = Constants.URL.BASE_DATA_URL + "get_cities"
        print(url)
        NetworkHandler.postRequest(url: url, parameters: nil, success:{(successRes) in
            let dictionary = successRes as! [String:Any]
            let data  = CityData(fromDictionary: dictionary)
            success(data)
        }, failure: {(error) in
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        });
    }


    class func getPhone(parameter: NSDictionary, success: @escaping(PhoneRoot)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASE_URL + "get_Contact_Details"
           print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in

            let dictionary = successResponse as! [String: Any]
            let data = PhoneRoot.init(fromDictionary: dictionary)
            UserDefaults.standard.set(data, forKey: "config_phone_number")
            UserDefaults.standard.synchronize()
            success(data)
                           
        }) { (error) in
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }


    


    
}
