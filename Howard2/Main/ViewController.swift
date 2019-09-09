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
    
    var flag = 0
    
    
    @IBOutlet weak var Help: UIButton!
    @IBOutlet weak var News: UIButton!
    @IBOutlet weak var Apps: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    var RoadMap:Array<String> = UserDefaults.standard.object(forKey: "RoadMap") as? Array<String> ?? Array()
    
    var timeEntered:Date = Date()
    
    @IBOutlet weak var header: UIImageView!
    @IBOutlet weak var footer: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.initAppSync()
        // Do any additional setup after loading the view.
        Help.layer.cornerRadius = 5
        Help.layer.masksToBounds = false
        Help.layer.shadowColor = UIColor.darkGray.cgColor
        Help.layer.shadowOpacity = 1
        Help.layer.shadowRadius = 0
        Help.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        News.layer.cornerRadius = 5
        News.layer.masksToBounds = false
        News.layer.shadowColor = UIColor.darkGray.cgColor
        News.layer.shadowOpacity = 1
        News.layer.shadowRadius = 0
        News.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        Apps.layer.cornerRadius = 5
        Apps.layer.masksToBounds = false
        Apps.layer.shadowColor = UIColor.darkGray.cgColor
        Apps.layer.shadowOpacity = 1
        Apps.layer.shadowRadius = 0
        Apps.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        logoutButton.layer.cornerRadius = 5
        logoutButton.layer.masksToBounds = false
        logoutButton.layer.shadowColor = UIColor.darkGray.cgColor
        logoutButton.layer.shadowOpacity = 1
        logoutButton.layer.shadowRadius = 0
        logoutButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        
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
        
       
        if UserDefaults.standard.bool(forKey: "disableNews"){
            News.isHidden = true
            flag += 1
        }
        else{
            News.isHidden = false
        }
        
        if UserDefaults.standard.bool(forKey: "disableApps"){
            Apps.isHidden = true
            flag += 1
        }
        else{
            Apps.isHidden = false
        }
        
        if UserDefaults.standard.bool(forKey: "disableHelp"){
            Help.isHidden = true
            flag += 1
        }
        else{
            Help.isHidden = false
        }
        
        if UserDefaults.standard.bool(forKey: "disablePIN"){
            logoutButton.isHidden = true
        }
        else{
            logoutButton.isHidden = false
        }
        
      
    
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        
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

