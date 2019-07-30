//
//  ViewController.swift
//  Test2
//
//  Created by Aaron Wise on 6/11/19.
//  Copyright © 2019 Aaron Wise. All rights reserved.
//
//
/*
 import AWSMobileClient
 
 override func viewDidLoad() {
 super.viewDidLoad()
 AWSMobileClient.sharedInstance().initialize { (userState, error) in
 if let userState = userState {
 print("UserState: \(userState.rawValue)")
 } else if let error = error {
 print("error: \(error.localizedDescription)")
 }
 }
 }
 
 */



import AWSMobileClient
import AWSAppSync

class LandingViewController: UIViewController{
    //Reference AppSync client
    var appSyncClient: AWSAppSyncClient?
    
    // self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    // var window = UIWindow(frame: UIScreen.main.bounds)
    
    
    
    @IBOutlet weak var ChatRoom: UIButton!
    @IBOutlet weak var SignOut: UIButton!
    
    @IBOutlet weak var navi: UINavigationItem!
    
    //buns
    //ll
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        //self.navigationController?.setViewControllers(LandingViewController, animated: true)
        
        
        
        ChatRoom.layer.cornerRadius = 15
        SignOut.layer.cornerRadius = 15
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        //initAppSync()
        initAWSMobileClient()
        
        
        
    }
    
    
    
    
    @IBAction func signOutPress(_ sender: Any) {
       // AWSMobileClient.sharedInstance().signOut()
        DispatchQueue.main.async {
            
            let viewController:UIViewController = UIStoryboard(name: "NewCallScreen", bundle: nil).instantiateViewController(withIdentifier: "Help") as UIViewController
            
            self.present(viewController, animated: true, completion: nil)

        }
        
    }
    
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
    
    func initAppSync() {
        do {
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            
            // Initialize the AWS AppSync configuration
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: AWSAppSyncServiceConfig(),
                                                                  userPoolsAuthProvider: {
                                                                    class MyCognitoUserPoolsAuthProvider : AWSCognitoUserPoolsAuthProviderAsync {
                                                                        func getLatestAuthToken(_ callback: @escaping (String?, Error?) -> Void) {
                                                                            AWSMobileClient.sharedInstance().getTokens { (tokens, error) in
                                                                                if error != nil {
                                                                                    callback(nil, error)
                                                                                } else {
                                                                                    callback(tokens?.idToken?.tokenString, nil)
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    return MyCognitoUserPoolsAuthProvider()}(),
                                                                  cacheConfiguration: cacheConfiguration)
            
            // Initialize the AWS AppSync client
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
        } catch {
            print("Error initializing appsync client. \(error)")
        }
    }
    
    
}
