//
//  UserHandler.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation
import Alamofire


class SettingHandler{
    
    static let sharedInstance = SettingHandler()
    

    class func getAboutUs(success: @escaping(AboutUsRoot)->Void, failure:@escaping(NetworkError) ->Void){
        let url = Constants.URL.BASE_URL + "aboutus"        
        print(url)
        NetworkHandler.postRequest(url: url, parameters: nil, success:{(successRes) in
            let dictionary = successRes as! [String:Any]
            let data  = AboutUsRoot(fromDictionary: dictionary)
            success(data)
        }, failure: {(error) in
            
        });
    }

    class func getContact(success: @escaping(AboutUsRoot)->Void, failure:@escaping(NetworkError) ->Void){
        let url = Constants.URL.BASE_URL + "contact"        
        print(url)
        NetworkHandler.postRequest(url: url, parameters: nil, success:{(successRes) in
            let dictionary = successRes as! [String:Any]
            let data  = AboutUsRoot(fromDictionary: dictionary)
            success(data)
        }, failure: {(error) in
            
        });
    }
    class func getPrivacy(success: @escaping(AboutUsRoot)->Void, failure:@escaping(NetworkError) ->Void){
        let url = Constants.URL.BASE_URL + "privacy"        
        print(url)
        NetworkHandler.postRequest(url: url, parameters: nil, success:{(successRes) in
            let dictionary = successRes as! [String:Any]
            let data  = AboutUsRoot(fromDictionary: dictionary)
            success(data)
        }, failure: {(error) in
            
        });
    }
    class func getTerm(success: @escaping(AboutUsRoot)->Void, failure:@escaping(NetworkError) ->Void){
        let url = Constants.URL.BASE_URL + "term"        
        print(url)
        NetworkHandler.postRequest(url: url, parameters: nil, success:{(successRes) in
            let dictionary = successRes as! [String:Any]
            let data  = AboutUsRoot(fromDictionary: dictionary)
            success(data)
        }, failure: {(error) in
            
        });
    }




    // class func getOrderHistory(parameter: NSDictionary, success: @escaping(OrderHistoryData)-> Void, failure: @escaping(NetworkError)-> Void) {
    //     let url = Constants.URL.BASE_URL_ORDER + "get_orders_his"
    //        print(url)
    //     NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in

    //            let dictionary = successResponse as! [String: Any]
    //             let data = OrderHistoryData.init(fromDictionary: dictionary)
    //            UserDefaults.standard.set(data, forKey: "userData")
    //            UserDefaults.standard.synchronize()
               
    //        }) { (error) in
    //            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
    //        }
    // }

    

    
}
