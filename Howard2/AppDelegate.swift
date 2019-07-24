//
//  AppDelegate.swift
//  Howard2
//
//  Created by William Risigo on 3/28/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import AWSAppSync
import AWSMobileClient


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    var appSyncClient: AWSAppSyncClient?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        /*
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let nav = UINavigationController()
        let mainView = ViewController(nibName: LandingViewController.swift, bundle: <#T##Bundle?#>)
        
        nav.viewControllers = [mainView]
        self.window!.rootViewController = nav
        self.window?.makeKeyAndVisible()
 */
        
        
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

        
       // FirebaseApp.configure()
        // Override point for customization after application launch.
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("tig oll bitties")
        
        var NewsClicks:[Int] = UserDefaults.standard.array(forKey: "newsCount") as! [Int]
        
        var AppClicks:[Int] = UserDefaults.standard.array(forKey: "appCount") as! [Int]
        
        
        var roadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
        
        
        let mutationInput = CreateDataEnvMutation(input: CreateDataEnvInput(id: 0, newscount: self.json(from: NewsClicks)!, appcount: self.json(from: AppClicks)!, roadmap: self.json(from: roadMap)!  ))
        
        
        
        
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
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func json(from object:Any) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
            return nil
        }
        return String(data: data, encoding: String.Encoding.utf8)
    }
    
}

