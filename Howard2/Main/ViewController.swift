//
//  ViewController.swift
//  Howard2
//
//  Created by William Risigo on 3/28/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Help: UIButton!
    @IBOutlet weak var News: UIButton!
    @IBOutlet weak var Apps: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Help.layer.cornerRadius = 15
        News.layer.cornerRadius = 15
        Apps.layer.cornerRadius = 15
        logoutButton.layer.cornerRadius = 15
        
    }


}
