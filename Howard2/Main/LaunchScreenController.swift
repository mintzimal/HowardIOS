//
//  LaunchScreenController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

class LaunchScreenController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    var RoadMap:Array<String> = UserDefaults.standard.object(forKey: "RoadMap") as? Array<String> ?? Array()
    
    var timeEntered:Date = Date()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 15
        signupButton.layer.cornerRadius = 15
        
        timeEntered = Date()
        
        RoadMap.append("Entered Launchscreen at: \(timeEntered)")
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

}
