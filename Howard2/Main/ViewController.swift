//
//  ViewController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 3/28/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by ViewController.swift
import UIKit
import Localize_Swift
import AWSAppSync
import AWSMobileClient

//Class definition and inheritance
class ViewController: UIViewController {
    
    //Create a new AWSAppSyncClient for use with the backend
    var appSyncClient: AWSAppSyncClient?
    
    //Flag for use with disabling and enabling specific hubs
    var flag = 0
    
    //Outlets for storyboard references
    @IBOutlet weak var Help: UIButton!
    @IBOutlet weak var News: UIButton!
    @IBOutlet weak var Apps: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    //Load in the current user default state for the Roadmap
    var RoadMap:Array<String> = UserDefaults.standard.object(forKey: "RoadMap") as? Array<String> ?? Array()
    
    //Save a date object when the storyboard is loaded for use with the roadmap
    var timeEntered:Date = Date()
    
    //Outlets for the main Howard Center images
    @IBOutlet weak var header: UIImageView!
    @IBOutlet weak var footer: UIImageView!
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize the AWS app sync service
        self.initAppSync()
        
        //Round the corners of the storyboard buttons
        Help.layer.cornerRadius = 5
        News.layer.cornerRadius = 5
        Apps.layer.cornerRadius = 5
        logoutButton.layer.cornerRadius = 5
    
        //Set the labels of the buttons to adjust their font size based on the number of characters in the label so that language localization does not cause text overflows
        Help.titleLabel?.adjustsFontSizeToFitWidth = true;
        News.titleLabel?.adjustsFontSizeToFitWidth = true;
        Apps.titleLabel?.adjustsFontSizeToFitWidth = true;
        logoutButton.titleLabel?.adjustsFontSizeToFitWidth = true;


       //Load in the current langauge from the user defaults storage
        Localize.setCurrentLanguage(UserDefaults.standard.string(forKey: "Language")!)
        
        //Update the labels to their correct language
        Apps.setTitle("Apps".localized(), for: .normal)
        News.setTitle("News".localized(), for: .normal)
        Help.setTitle("Help".localized(), for: .normal)
        logoutButton.setTitle("Logout".localized(), for: .normal)
        
        //Update the time entered date storage
        timeEntered = Date()
        
        //Add the new time entered date to the roadmap
        RoadMap.append("Entered Home screen at: \(timeEntered)")
    
       //If the user has previously elected to hide news hide it
        if UserDefaults.standard.bool(forKey: "disableNews"){
            News.isHidden = true
            flag += 1
        }
        
        //If the user hasn't previously elected to hide news don't hide it
        else{
            News.isHidden = false
        }
        
        //If the user has previously elected to hide apps hide it
        if UserDefaults.standard.bool(forKey: "disableApps"){
            Apps.isHidden = true
            flag += 1
        }
            
        //If the user hasn't previously elected to hide news don't hide it
        else{
            Apps.isHidden = false
        }
        
        //If the user has previously elected to hide help hide it
        if UserDefaults.standard.bool(forKey: "disableHelp"){
            Help.isHidden = true
            flag += 1
        }
            
        //If the user hasn't previously elected to hide help don't hide it
        else{
            Help.isHidden = false
        }
        
        //If the user has previously elected to hide the PIN page hide it
        if UserDefaults.standard.bool(forKey: "disablePIN"){
            logoutButton.isHidden = true
        }
            
        //If the user hasn't previously elected to hide the PIN page don't hide it
        else{
            logoutButton.isHidden = false
        }
    }
    
    //On the initial view controller load, when the view appears
    override func viewDidAppear(_ animated: Bool) {
        
       //Hide the navigation controller that could be here because of the view stack
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        //If two of the services are hidden, just load into the unhidden service
        if flag == 2 {
            
            if UserDefaults.standard.bool(forKey: "skipHome"){
            
            if !UserDefaults.standard.bool(forKey: "disableNews"){
               
                let NewsController = self.storyboard!.instantiateViewController(withIdentifier: "N")
                
                self.present(NewsController, animated: false, completion: nil)
            }
            
            if !UserDefaults.standard.bool(forKey: "disableApps"){
                let AppController = self.storyboard!.instantiateViewController(withIdentifier: "A")
                
                self.present(AppController, animated: false, completion: nil)
            }
            
            if !UserDefaults.standard.bool(forKey: "disableHelp"){
                let HelpController = self.storyboard!.instantiateViewController(withIdentifier: "H")
                
                self.present(HelpController, animated: false, completion: nil)
            }
            
                UserDefaults.standard.set(false, forKey: "skipHome")
        }
        }
    }
    
    //Function connected to all buttons that cause you to move to a different view in the stack
    @IBAction func LeavingHome(_ sender: Any) {
        
        //Calculate the time spent on the page using the previously saved date object
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add an entry to the Roadmap
        RoadMap.append("Exited Home screen after: \(timeSpent) seconds")
        
        //Save the updated roadmap to the user defaults storage
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
    }
    
    
    @IBAction func sendData2(_ sender: Any) {
        
        appSyncClient?.clearCache()
        
        appSyncClient?.fetch(query: ListDataEnvsQuery()) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? " error fetching")
                return
            }
            
            let count = result?.data?.listDataEnvs?.items?.count
            
            let NewsClicks:[Int] = UserDefaults.standard.array(forKey: "newsCount") as! [Int]
            
            let AppClicks:[Int] = UserDefaults.standard.array(forKey: "appCount") as! [Int]
            
            let roadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
            
            let mutationInput = CreateDataEnvMutation(input: CreateDataEnvInput(id: count!, newscount: self.json(from: NewsClicks)!, appcount: self.json(from: AppClicks)!, roadmap: self.json(from: roadMap)!  ))
            
            self.appSyncClient?.perform(mutation: mutationInput) { (result, error) in
                
                
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }
                if let resultError = result?.errors {
                    print("Error saving the item on server: \(resultError)")
                    return
                }
            }
        }
    }
    
    func json(from object:Any) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
            return nil
        }
        return String(data: data, encoding: String.Encoding.utf8)
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
