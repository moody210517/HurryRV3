//
//  UserHandler.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import Foundation
import Alamofire


class UserHandler{
    
    static let sharedInstance = UserHandler()
    
    var objLoginDetails : LoginData?
    
        
    // get answer from phone number
    class func getQuestionFromPhoneCustomer(parameter: NSDictionary, success: @escaping(QuestionPhoneRoot)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.FORGOT + "getQuestionFromPhoneCustomer"           
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in
            
               let dictionary = successResponse as! [String: Any]
               let data = QuestionPhoneRoot.init(fromDictionary: dictionary)
               success(data)
               
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }

    // get answer from email
    class func getQuestionFromEmailCustomer(parameter: NSDictionary, success: @escaping(QuestionPhoneRoot)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.FORGOT + "getQuestionFromEmailCustomer"
        print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in            
               let dictionary = successResponse as! [String: Any]
               let data = QuestionPhoneRoot.init(fromDictionary: dictionary)
               success(data)
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }    
    }    


    // get eamil from phone number and answer
    class func forgotUserNameCustomer(parameter: NSDictionary, success: @escaping(BasicRoot)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.FORGOT + "forgotUserNameCustomer"
        print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in            
               let dictionary = successResponse as! [String: Any]
               let data = BasicRoot.init(fromDictionary: dictionary)
               success(data)
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }    
    }    



    // get password from email and answer
    class func forgotPasswordCustomer(parameter: NSDictionary, success: @escaping(BasicRoot)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.FORGOT + "forgotPasswordCustomer"        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in            
               let dictionary = successResponse as! [String: Any]
               let data = BasicRoot.init(fromDictionary: dictionary)
               success(data)
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }    
    } 

    // login user
    class func loginUser(parameter: NSDictionary, success: @escaping(LoginData)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASE_URL + "login"
           print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in            
               let dictionary = successResponse as! [String: Any]
                let data = LoginData.init(fromDictionary: dictionary)
               UserDefaults.standard.set(data, forKey: "userData")
               UserDefaults.standard.synchronize()
               success(data)
               
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }

    // get otp code from phone number
    class func getOtpSignup(parameter: NSDictionary, success: @escaping(BasicRoot)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASIC_DATA_URL + "getOtpSignup"
           print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in            
               let dictionary = successResponse as! [String: Any]
               let data = BasicRoot.init(fromDictionary: dictionary)               
               success(data)
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }

    // register user
    class func registerUser(parameter: NSDictionary, success: @escaping(LoginData)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASE_URL + "register"
           print(url)
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in            
               let dictionary = successResponse as! [String: Any]
               let data = LoginData.init(fromDictionary: dictionary)
               UserDefaults.standard.set(data, forKey: "userData")
               UserDefaults.standard.synchronize()
               success(data)
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }
       
    
     // update user
    class func updateUser(parameter: NSDictionary, success: @escaping(LoginData)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.BASE_URL + "update"           
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters , success: { (successResponse) in            
               let dictionary = successResponse as! [String: Any]
               let data = LoginData.init(fromDictionary: dictionary)
               UserDefaults.standard.set(data, forKey: "userData")
               UserDefaults.standard.synchronize()
               success(data)
           }) { (error) in
               failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
           }
    }
       



    
    
    
}
