//
//  LaunchScreenController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import AVKit


import AWSMobileClient
import AWSAppSync

class LaunchScreenController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    var RoadMap:Array<String> = UserDefaults.standard.object(forKey: "RoadMap") as? Array<String> ?? Array()
    
    var timeEntered:Date = Date()

    @IBOutlet weak var header: UIImageView!
    
    @IBOutlet weak var footer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 5
       
        
        signupButton.layer.cornerRadius = 5
     
        
     
        
        timeEntered = Date()
        
        RoadMap.append("Entered Launchscreen at: \(timeEntered)")
        
        self.initAWSMobileClient()
        
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
        
         if UserDefaults.standard.bool(forKey: "disablePIN"){
            
            UserDefaults.standard.set(true, forKey: "skipHome")
            
            let HomeController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
            
            self.present(HomeController, animated: false, completion: nil)
            
            
            
            
            
        } 
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        var tutCheck = false
        tutCheck = UserDefaults.standard.bool(forKey: "launchTut")
            
        
        if tutCheck == false{
            let alertController = UIAlertController(title: "Walkthrough", message:
                "Would you like to watch a quick usage video?", preferredStyle: .alert)

            alertController.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
                print("Handle Ok logic here")
                
                let videoURL = Bundle.main.url(forResource: "testVideo", withExtension: "mp4")!
                
                let player = AVPlayer(url: videoURL as URL)
                let vc = AVPlayerViewController()
                vc.player = player

                self.present(vc, animated: true) {
                    vc.player?.play()
                }
                
            }))

            alertController.addAction(UIAlertAction(title: "No", style: .cancel, handler: { (action: UIAlertAction!) in
                print("Handle Cancel Logic here")
            }))
        
            
            UserDefaults.standard.set(true,forKey: "launchTut")
            self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    
    
    @IBAction func LoginTracker(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        
        RoadMap.append("Exited  Launchscreen after: \(timeSpent) seconds")
        
        UserDefaults.standard.set(RoadMap, forKey: "RoadMap")
        
        print(RoadMap)
    }
    
    @IBAction func SignupTracker(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        
        RoadMap.append("Exited Launchscreen after: \(timeSpent) seconds")
        
        UserDefaults.standard.set(RoadMap, forKey: "RoadMap")
        
        print(RoadMap)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func showSignIn(){
        
        
        AWSMobileClient.sharedInstance().showSignIn(navigationController:self.navigationController!, signInUIOptions: SignInUIOptions(logoImage: UIImage(named: "Main.png"), backgroundColor: UIColor.white)){
            (userState, error) in
            if(error == nil){
                DispatchQueue.main.async {
                    print("User successfully logged in")
                    
                }
            }
        };
        
    }
    
    
    
    
    
    func initAWSMobileClient(){
        
        
        
        
        
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            
            if let userState = userState {
                switch(userState){
                case .signedIn:
                    print("Logged In")
                    //print("Cognito Identity Id (authenticated): \(AWSModileClient.sharedInstance().identityId))")
                    
                case .signedOut:
                    print("Logged  Out")
                    DispatchQueue.main.async {
                        self.showSignIn()
                    }
                case .signedOutUserPoolsTokenInvalid:
                    print("User Pools refresh token is invalid or expired")
                    DispatchQueue.main.async {
                        self.showSignIn()
                    }
                case .signedOutFederatedTokensInvalid:
                    print("Federated refresh token is invalid or expired")
                    DispatchQueue.main.async {
                        self.showSignIn()
                    }
                default:
                    AWSMobileClient.sharedInstance().signOut()
                    
                }
            }else if let error = error {
                print(error.localizedDescription)
                
                
                
                
            }
        }
    }
    
    
    
}
