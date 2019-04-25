//
//  CallScreenController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/3/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import AVFoundation


class CallScreenController: UIViewController {
    
    @IBOutlet weak var districtOneButton: UIButton!
    @IBOutlet weak var districtTwoButton: UIButton!
    
    
   @IBAction func callDistrictOne(_ sender: Any) {
        print("Calling District One")
        dialNumber(number: "+8027777928")
    }
    
    
    @IBAction func callDistrictTwo(_ sender: Any) {
        print("Calling District Two")
        dialNumber(number: "+6178173687")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
