//
//  AppsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

class AppsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Twitter(_ sender: Any) {
        if let appURL = URL(string: "twitter//:"){
            let canOpen = UIApplication.shared.canOpenURL(appURL)
            print("\(canOpen)")
            let appName = "Twitter"
            let appScheme = "\(appName)://"
            let appSchemeURL = URL(string: appScheme)
            
            
            if UIApplication.shared.canOpenURL(appSchemeURL! as URL){
                UIApplication.shared.open(appSchemeURL!, options: [:], completionHandler: nil)
            }
            else{
                let alert=UIAlertController(title: "\(appName) Error...", message: "The app \(appName) was not found", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title:"OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
    
  
        }
    
    }

}
