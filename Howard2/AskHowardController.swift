//
//  AskHowardController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/16/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import MessageUI

class AskHowardController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var emailButton: UIButton!
    
    @IBAction func sendMail(_ sender: Any) {
        
        if MFMailComposeViewController.canSendMail() {
            let emailTitle = "Howard The Elephant's Help"
            let messageBody = "Type any questions/comments/concerns you have about your safety connection app or experience. I hope you are having a great day!"
            let toRecipents = ["TheElephantHoward@gmail.com"]
            
            let emailForm:MFMailComposeViewController = MFMailComposeViewController()
            
            emailForm.mailComposeDelegate = self
            emailForm.setSubject(emailTitle)
            emailForm.setMessageBody(messageBody, isHTML: false)
            emailForm.setToRecipients(toRecipents)
            
            self.present(emailForm, animated: true, completion: nil)
            
        }
        else
        {
            print("No email account found")
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailButton.layer.cornerRadius = 15
        
        // Do any additional setup after loading the view.
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
