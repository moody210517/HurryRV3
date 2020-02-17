//
//  ViewController.swift
//  HurryRV3
//
//  Created by my on 2020/2/15.
//  Copyright © 2020 my. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class SplashViewController: UIViewController {

    let avPlayerLayer = AVPlayerLayer()
    var avPlayer : AVPlayer!
    var movieView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                    
        let bounds = UIScreen.main.bounds
        let width = bounds.width
        let height = width*1080/1920.0;
        
        let frame = CGRect(x: 0 , y: 0, width: width, height: height)
        self.movieView = UIView(frame:frame)
        self.view.addSubview(self.movieView)
        self.movieView.center = self.view.center;

     
               
        self.playVideo()
        self.loadBasicData()
        
    }
    
    func playVideo(){
        guard let urlPathString = Bundle.main.path(forResource: "new_white", ofType: "mp4") else {
                   debugPrint("video file not found")
                   return;
               }
        self.avPlayer = AVPlayer(url:URL(fileURLWithPath: urlPathString))
        self.avPlayerLayer.player = self.avPlayer
        self.avPlayerLayer.frame = self.movieView.bounds
        self.movieView.layer.addSublayer(self.avPlayerLayer)
        self.avPlayer.play()
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.avPlayer.currentItem, queue: .main) { [weak self] _ in
                 self?.appDelegate.moveToLogin(type: "")
             }
               
    }
    
    func loadBasicData(){
    
        UserHandler.getCity(success: {(successRes) in
            if(successRes.success == "200"){
                Constants.cityLists = successRes.cityLists
                //self.appDelegate.moveToLogin()
            }
            
        }, failure: {(error) in
            print(error.message)
            Constants.showBasicAlert(message: error.message)
        })
    }

}

