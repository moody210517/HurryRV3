//
//  UserHandler.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation
import Alamofire


class OrderHandler{
    
    static let sharedInstance = OrderHandler()
    

    // get all order history data
    class func getOrderHistory(parameter: NSDictionary, success: @escaping(OrderHistoryData)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASE_URL_ORDER + "get_orders_his"
           print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in

               let dictionary = successResponse as! [String: Any]
                let data = OrderHistoryData.init(fromDictionary: dictionary)
               UserDefaults.standard.set(data, forKey: "userData")
               UserDefaults.standard.synchronize()
               
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }
    
    // get distance and price api
    class func getDistance(parameter: NSDictionary, success: @escaping(OrderHistoryData)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASE_URL + "getDistance"
           print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in

               let dictionary = successResponse as! [String: Any]
                let data = OrderHistoryData.init(fromDictionary: dictionary)
               success(data)
               
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }


    class func order(parameter: NSDictionary, success: @escaping(ReviewRoot)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASE_URL + "order"
           print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in

               let dictionary = successResponse as! [String: Any]
                let data = ReviewRoot.init(fromDictionary: dictionary)
               success(data);
               
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }


}
