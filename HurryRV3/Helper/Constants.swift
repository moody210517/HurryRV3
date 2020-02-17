//
//  Constants.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation
import UIKit

class Constants{
    
    
    struct URL {
        static  let g_baseUrl = "https://mobileapi.hurryr.in"
        static let BASE_URL = g_baseUrl + "/WebService/"
        static let BASE_DATA_URL = g_baseUrl + "/Basic/"
        static let BASE_URL_ORDER = g_baseUrl +  "/Order/"
        static let FORGOT = g_baseUrl + "/Forgot/"
        static let ZIP_LOCATION = "httpss://maps.googleapis.com/maps/api/geocode/json"
        static let PHOTO_URL = "/uploads/"
        static let symbol_dollar = "$"
        static let support_phone = "tel:9372863299"
        
    }
    static var cityLists:[CityModel]!
    
    struct NetworkError {
        static let timeOutInterval: TimeInterval = 20
        static let error = "Error"
        static let internetNotAvailable = "Internet Not Available"
        static let pleaseTryAgain = "Please Try Again"
        static let generic = 4000
        static let genericError = "Please Try Again."        
        static let serverErrorCode = 5000
        static let serverNotAvailable = "Server Not Available"
        static let serverError = "Server Not Availabe, Please Try Later."
        
        static let timout = 4001
        static let timoutError = "Network Time Out, Please Try Again."
        
        static let login = 4003
        static let loginMessage = "Unable To Login"
        static let loginError = "Please Try Again."
        
        static let internet = 4004
        static let internetError = "Internet Not Available"
    }
    
    struct NetworkSuccess {
        static let statusOK = 200
    }
    
    
    
    struct activitySize {
        static let size = CGSize(width: 40, height: 40)
    }
    
    enum loaderMessages : String {
        case loadingMessage = ""
    }
    
    static func showBasicAlert (message: String) -> UIAlertController{
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
           return alert
       }
}
