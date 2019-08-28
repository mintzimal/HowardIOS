//
//  CallScreenController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/3/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import AVFoundation


class NewCallScreenController: UIViewController {
    @IBOutlet weak var LogoutButton: UIButton!
    @IBOutlet weak var HomeButton: UIButton!
    
    @IBOutlet weak var districtButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var CallLabel: UILabel!
    
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    var timeEntered:Date = Date()
    
    let District = UserDefaults.standard.integer(forKey: "District")
    
    @IBAction func callDistrictFunction(_ sender: Any) {
        if(District == 1){
            print("Calling District One")
            dialNumber(number: "+8027777928")
        }
        
        if(District == 2){
            print("Calling District Two")
            dialNumber(number: "+6178173687")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        LogoutButton.isHidden = true
        
        if UserDefaults.standard.bool(forKey: "disableNews") && UserDefaults.standard.bool(forKey: "disableApps") {
            
            HomeButton.isHidden = true
            
            if !UserDefaults.standard.bool(forKey: "disablePIN"){
                
                LogoutButton.isHidden = false
            }
            
        }
        
        
        RoadMap.append("Entered Help Screen at: \(timeEntered)")
        
        districtButton.layer.cornerRadius = 50
        messageButton.layer.cornerRadius = 50
        
        messageButton.titleLabel?.adjustsFontSizeToFitWidth = true
        messageButton.setTitle("Message".localized(), for: .normal)
        
        districtButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        CallLabel.adjustsFontSizeToFitWidth = true
        CallLabel.text = "Click to Call".localized()
        
        if(District == 1){
            districtButton.setTitle("District 1".localized(), for: .normal)
        }
        
        if(District == 2){
            districtButton.setTitle("District 2".localized(), for: .normal)
        }
        
        
        // Do any additional setup after loading the view.
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
    var isTorch = false
    @IBOutlet weak var Flash: UIButton!
    @IBAction func actionTorchClick(sender: AnyObject) {
        
        
        
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else { return }
        
        if device.hasTorch {
            
            isTorch = !isTorch
            do {
                try device.lockForConfiguration()
                if isTorch == true {
                    device.torchMode = .on
                    
                } else {
                    device.torchMode = .off
                    
                }
                
                
                
                device.unlockForConfiguration()
                
            } catch {
                
                print("Torch is not working.")
                
            }
            
        } else {
            
            print("Torch not compatible with device.")
            
        }}
    
    @IBAction func LeavingHelp(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited Help Screen after: \(timeSpent) seconds")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
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
