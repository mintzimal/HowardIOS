//
//  ViewController.swift
//  Howard2
//
//  Created by William Risigo on 3/28/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBOutlet weak var Help: UIButton!
    @IBOutlet weak var News: UIButton!
    @IBOutlet weak var Apps: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
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
            
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Help.layer.cornerRadius = 15
        News.layer.cornerRadius = 15
        Apps.layer.cornerRadius = 15
        logoutButton.layer.cornerRadius = 15
        
    }


}

