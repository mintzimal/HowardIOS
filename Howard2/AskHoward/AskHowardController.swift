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
    @IBOutlet weak var QuestionLabel: UILabel!
    
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    var timeEntered:Date = Date()
    
    
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
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailButton.layer.cornerRadius = 0
        
        emailButton.titleLabel?.adjustsFontSizeToFitWidth = true
        emailButton.setTitle("Click to Let Me Know".localized(), for: .normal)
        
        QuestionLabel.adjustsFontSizeToFitWidth = true
        QuestionLabel.text = "Do you have any questions?".localized()
        
        RoadMap.append("Entered Question and Answer Screen at: \(timeEntered)")
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LeavingQA(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited Question and Answer Screen after: \(timeSpent) seconds")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        print(RoadMap)
        
        
        
        if UserDefaults.standard.bool(forKey: "disableNews") && UserDefaults.standard.bool(forKey: "disableHelp") {
            
            let AppController = self.storyboard!.instantiateViewController(withIdentifier: "A")
            
            self.present(AppController, animated: false, completion: nil)
        }
            if UserDefaults.standard.bool(forKey: "disableApps") && UserDefaults.standard.bool(forKey: "disableHelp") {
                
                let NewsController = self.storyboard!.instantiateViewController(withIdentifier: "N")
                
                self.present(NewsController, animated: false, completion: nil)
        }
                if UserDefaults.standard.bool(forKey: "disableNews") && UserDefaults.standard.bool(forKey: "disableApps") {
                    
                    let HelpController = self.storyboard!.instantiateViewController(withIdentifier: "H")
                    
                    self.present(HelpController, animated: false, completion: nil)
           
            
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
