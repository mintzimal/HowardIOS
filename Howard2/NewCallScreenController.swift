//
//  CallScreenController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/3/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

class NewCallScreenController: UIViewController {
    
    @IBOutlet weak var districtOneButton: UIButton!
    @IBOutlet weak var districtTwoButton: UIButton!
    
    @IBAction func connectDistrictOne(_ sender: Any) {
        print("Calling District One")
        dialNumber(number: "+8027777928")
    }
    
    @IBAction func connectDistrictTwo(_ sender: Any) {
        print("Calling District Two")
        dialNumber(number: "+6178173687")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        districtOneButton.layer.cornerRadius = 15
        districtTwoButton.layer.cornerRadius = 15
    }
    
    func dialNumber(number : String) {
        
        if let url = URL(string: "tel://\(number)"),
            UIApplication.shared.canOpenURL(url) {
            
            //openURL was depreciated in IOS 10, checks version and calls the appropriate function
            
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler:nil)
            }
            else
            {
                UIApplication.shared.openURL(url)
            }
        }
        else
        {
            print("Error calling your district, please try again")
        }
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
