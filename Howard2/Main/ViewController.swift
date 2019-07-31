//
//  ViewController.swift
//  Howard2
//
//  Created by William Risigo on 3/28/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import Localize_Swift
import AWSAppSync
import AWSMobileClient



class ViewController: UIViewController {
    
    var appSyncClient: AWSAppSyncClient?
    
    
    
    @IBOutlet weak var Help: UIButton!
    @IBOutlet weak var News: UIButton!
    @IBOutlet weak var Apps: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    var RoadMap:Array<String> = UserDefaults.standard.object(forKey: "RoadMap") as? Array<String> ?? Array()
    
    var timeEntered:Date = Date()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.initAppSync()
        // Do any additional setup after loading the view.
        Help.layer.cornerRadius = 15
        News.layer.cornerRadius = 15
        Apps.layer.cornerRadius = 15
        logoutButton.layer.cornerRadius = 15
        
        timeEntered = Date()
        
        RoadMap.append("Entered Home screen at: \(timeEntered)")
        
        Help.titleLabel?.adjustsFontSizeToFitWidth = true;
        News.titleLabel?.adjustsFontSizeToFitWidth = true;
        Apps.titleLabel?.adjustsFontSizeToFitWidth = true;
        logoutButton.titleLabel?.adjustsFontSizeToFitWidth = true;

        Localize.setCurrentLanguage(UserDefaults.standard.string(forKey: "Language")!)
        
        Apps.setTitle("Apps".localized(), for: .normal)
        News.setTitle("News".localized(), for: .normal)
        Help.setTitle("Help".localized(), for: .normal)
        logoutButton.setTitle("Logout".localized(), for: .normal)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBAction func LeavingHome(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited Home screen after: \(timeSpent) seconds")
        
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
            
            
            var NewsClicks:[Int] = UserDefaults.standard.array(forKey: "newsCount") as! [Int]
            
            var AppClicks:[Int] = UserDefaults.standard.array(forKey: "appCount") as! [Int]
            
            
            var roadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
            
            
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
            
            
            
            
            
            /*
             if(allConversations != nil){
             for item in allConversations!{
             
             
             
             self.convoID = item!.conversationId
             
             self.retrieveMessages()
             
             
             return
             
             
             }
             
             
             
             
             }
             
             
             
             */
            
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

