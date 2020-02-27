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


//Imports used by LandingViewController.swift
import AWSMobileClient
import AWSAppSync

//Class definition and inheritance
class LandingViewController: UIViewController{
    
    //Reference AppSync client
    var appSyncClient: AWSAppSyncClient?
    
    //Load in the current Roadmap state
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    //Create a new date object for reference with Roadmap
    var timeEntered:Date = Date()
    
    //Button for entering the chatrooms
    @IBOutlet weak var ChatRoom: UIButton!
    
    //Button for signing out of the AWS backend
    @IBOutlet weak var SignOut: UIButton!
    
    //Navigation bar for quick transfering between services
    @IBOutlet weak var navi: UINavigationItem!
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add the entrance date to the Roadmap data structure
        RoadMap.append("Entered Chat Room Screen at: \(timeEntered)")
    
        //Instantiate the view controller such that it isn't hidden outside the chatroom
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        //This will only activate when inside the chatrooms themselves
        if(SignOut != nil){
        
            //If actually inside a chatroom hide the navigation controller until they return to the hub page
            self.navigationController?.setNavigationBarHidden(true, animated: true)
        }
        
        //Round the chatroom and the signout buttons
        ChatRoom.layer.cornerRadius = 15
        SignOut.layer.cornerRadius = 15
        
        //Define the appdelegate for the sync client
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        //Initialize the AWS Mobile Client with the current app delegate
        initAWSMobileClient()
    }
    
    //When chat room is entered
    @IBAction func chatRoomPress(_ sender: Any){
       
        //Toggle the navigation bar off if you enter from the hub
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    //When signout is pressed
    @IBAction func signOutPress(_ sender: Any) {
        
        //Signout of the current instantiated AWS Mobile Client
        AWSMobileClient.sharedInstance().signOut()
        
        //Asyncronously use the main thread
        DispatchQueue.main.async {
            
            //Calculate the time differential spent in this location for the spent time calculation for Roadmap
            let timeSpent = Date().timeIntervalSince(self.timeEntered)
            
            
            //Add the calculation to the roadmap structure
            self.RoadMap.append("Exited Chat Room Screen after: \(timeSpent) seconds")
            
           //Toggle off the navigation controller so it doesn't appear on earlier pages after signout is completed
            self.navigationController?.setNavigationBarHidden(true, animated: true)
            
            //Instantiate a new instance of the call/help portal
            let viewController:UIViewController = UIStoryboard(name: "NewCallScreen", bundle: nil).instantiateViewController(withIdentifier: "Help") as UIViewController
            
            //Present the new view controller to the user
            self.show(viewController, sender:self)
        }
    }
    
    //Activated when the AWS client does not recognize a current signin
    func showSignIn(){
       
       //Present AWS login to the user, validate against saved user profiles
        AWSMobileClient.sharedInstance().showSignIn(navigationController:self.navigationController!, signInUIOptions: SignInUIOptions(logoImage: UIImage(named: "Main.png"), backgroundColor: UIColor.white)){
            (userState, error) in
            if(error == nil){
                DispatchQueue.main.async {
                    print("User successfully logged in")
                    
                }
            }
        };
        
    }
    
    //Create the AWS Mobile Client for use in the message space
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
            } else if let error = error {
                print(error.localizedDescription)
                
            }
        }
    }
    
    //Sync to the AWS backend and load configurations
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
