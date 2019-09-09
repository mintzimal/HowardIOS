//
//  LaunchScreenController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit


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
        loginButton.layer.masksToBounds = false
        loginButton.layer.shadowColor = UIColor.darkGray.cgColor
        loginButton.layer.shadowOpacity = 1
        loginButton.layer.shadowRadius = 0
        loginButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        signupButton.layer.cornerRadius = 5
        signupButton.layer.masksToBounds = false
        signupButton.layer.shadowColor = UIColor.darkGray.cgColor
        signupButton.layer.shadowOpacity = 1
        signupButton.layer.shadowRadius = 0
        signupButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        header.layer.masksToBounds = false
        header.layer.shadowColor = UIColor.darkGray.cgColor
        header.layer.shadowOpacity = 1
        header.layer.shadowRadius = 0
        header.layer.shadowOffset = CGSize(width: 0, height: 5)
        
        footer.layer.masksToBounds = false
        footer.layer.shadowColor = UIColor.darkGray.cgColor
        footer.layer.shadowOpacity = 1
        footer.layer.shadowRadius = 0
        footer.layer.shadowOffset = CGSize(width: 0, height: -5)
        
        
        
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
