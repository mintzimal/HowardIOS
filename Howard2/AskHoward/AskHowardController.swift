//
//  AskHowardController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/16/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by AskHowardController.swift
import UIKit
import MessageUI

//Class definition and inheritance
class AskHowardController: UIViewController, MFMailComposeViewControllerDelegate {
    
    //Button that brings you to the main storyboard
    @IBOutlet weak var homeButton: UIButton!
    
    //Button that instantiates an email form for the user
    @IBOutlet weak var emailButton: UIButton!
    
    //Translatable message presented by the page
    @IBOutlet weak var QuestionLabel: UILabel!
    
    //Loads in the current roadmap object
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    //Creates a new date object for use with the roadmap object
    var timeEntered:Date = Date()
    
    //Function that is connected to the emailButton
    @IBAction func sendMail(_ sender: Any) {
        
        //Assuming that there is an active email account on the device
        if MFMailComposeViewController.canSendMail() {
            
            //Populate the subject, message, and receiver of the form
            let emailTitle = "Howard The Elephant's Help"
            let messageBody = "Type any questions/comments/concerns you have about your safety connection app or experience. I hope you are having a great day!"
            let toRecipents = ["AskSafetyConnection@howardcenter.org"]
            
            //Create a blank mail form
            let emailForm:MFMailComposeViewController = MFMailComposeViewController()
            
            //Define the mail delegate as being the default account of the current device
            emailForm.mailComposeDelegate = self
            
            //Fill out the form with the default information given the form is valid
            emailForm.setSubject(emailTitle)
            emailForm.setMessageBody(messageBody, isHTML: false)
            emailForm.setToRecipients(toRecipents)
            
            //Present the formatted and filled email form
            self.present(emailForm, animated: true, completion: nil)
        }
        
        //IF the above errors, there is no default email account associated with the phone
        else
        {
            print("No email account found")
        }
    }
    
    //When the email is sent, dismiss the mail kit controller instance
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true)
    }
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Email button gets no rounding
        emailButton.layer.cornerRadius = 0
        
        //Email button adjusts it's font to fit the space (adaption for different languages having different length words)
        emailButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        //Set the text of the email button localized for language
        emailButton.setTitle("Click to Let Me Know".localized(), for: .normal)
        
        //Question label adjusts it's font to fit the space (adaption for different languages having different length words)
        QuestionLabel.adjustsFontSizeToFitWidth = true
        
        //Set the text of the question label localized for language
        QuestionLabel.text = "Do you have any questions?".localized()
        
        //Add the new roadmap entry to the roadmap object to keep track of entrance time/date
        RoadMap.append("Entered Question and Answer Screen at: \(timeEntered)")
    }
    
    //On exiting the Ask Howard Storyboard
    @IBAction func LeavingQA(_ sender: Any) {
        
        //Calculate the time difference in between entering and leaving the page
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add the new information into the roadmap object
        RoadMap.append("Exited Question and Answer Screen after: \(timeSpent) seconds")
        
        //Write the complete/updated roadmap back to the user defaults
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        //If news and help are disabled
        if UserDefaults.standard.bool(forKey: "disableNews") && UserDefaults.standard.bool(forKey: "disableHelp") {
            
            //Create a new instance of the apps page
            let AppController = self.storyboard!.instantiateViewController(withIdentifier: "A")
            
            //Present just the apps to the user
            self.present(AppController, animated: false, completion: nil)
        }
        
            //If apps and help are disabled
            if UserDefaults.standard.bool(forKey: "disableApps") && UserDefaults.standard.bool(forKey: "disableHelp") {
                
                //Create a new instance of the news page
                let NewsController = self.storyboard!.instantiateViewController(withIdentifier: "N")
                
                //Present just the news to the user
                self.present(NewsController, animated: false, completion: nil)
        }
        
                //If news and apps are disabled
                if UserDefaults.standard.bool(forKey: "disableNews") && UserDefaults.standard.bool(forKey: "disableApps") {
                    
                    //Create a new instance of the help page
                    let HelpController = self.storyboard!.instantiateViewController(withIdentifier: "H")
                    
                    //Present just the help page to the user
                    self.present(HelpController, animated: false, completion: nil)
        }
    }
}
