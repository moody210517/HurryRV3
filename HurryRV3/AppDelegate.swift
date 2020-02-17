//
//  AppDelegate.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase
import FBSDKCoreKit
import IQKeyboardManagerSwift


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?
     
     static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let keyboardManager = IQKeyboardManager.shared
     let storyboard = UIStoryboard(name: "Main", bundle: nil)
     let defaults = UserDefaults.standard
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // For Facebook and Google SignIn

        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
            
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    
    
    func moveToHome() {
        let HomeVC = storyboard.instantiateViewController(withIdentifier: "HomeController") as! HomeController
        let navi : UINavigationController = UINavigationController(rootViewController: HomeVC)
        self.window?.makeKeyAndVisible()
    }
    
  
    
    func moveToLogin(type : String!) {
        
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        let nav: UINavigationController = UINavigationController(rootViewController: loginVC)
        self.window?.rootViewController = nav
        loginVC.modalPresentationStyle = .fullScreen
        self.window?.makeKeyAndVisible()
        
    }
    
    func presentController(ShowVC: UIViewController) {
        self.window?.rootViewController?.present(ShowVC, animated: false
            , completion: {
                
        })
    }
    

    
    
    
}

