//
//  SignupController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by SignupController.swift
import UIKit
import Localize_Swift

//Class definition and inheritance
class SignupController: UIViewController {
    
    //PIN PAGE BUTTONS
    @IBOutlet weak var PINView: UITextField?
    
    @IBOutlet weak var showButt: UIButton?
    @IBOutlet weak var submitButton: UIButton?
    
    @IBOutlet weak var Button1: UIButton?
    @IBOutlet weak var Button2: UIButton?
    @IBOutlet weak var Button3: UIButton?
    @IBOutlet weak var Button4: UIButton?
    @IBOutlet weak var Button5: UIButton?
    @IBOutlet weak var Button6: UIButton?
    @IBOutlet weak var Button7: UIButton?
    @IBOutlet weak var Button8: UIButton?
    @IBOutlet weak var Button9: UIButton?
    @IBOutlet weak var Button0: UIButton?

    var buttonBox:[UIButton]  = []
    var backgroundBox:[UIButton] = []
    var labelBox:[UILabel] = []
    
    
    //DISTRICT PAGE BUTTONS
    @IBOutlet weak var District1: UIButton!
    @IBOutlet weak var District2: UIButton!
    @IBOutlet weak var distLabel: UILabel!
    
    //LANGUAGE PAGE BUTTONS
    @IBOutlet weak var LangBackground: UIView!
    @IBOutlet weak var LangBackground2: UIView!
    @IBOutlet weak var LQ: UILabel!
    @IBOutlet weak var L1: UIButton!
    @IBOutlet weak var L2: UIButton!
    @IBOutlet weak var L3: UIButton!
    @IBOutlet weak var L4: UIButton!
    @IBOutlet weak var L5: UIButton!
    @IBOutlet weak var L6: UIButton!
    @IBOutlet weak var L7: UIButton!
    @IBOutlet weak var L8: UIButton!
    @IBOutlet weak var L9: UIButton!
    
    @IBOutlet weak var NextPage: UIButton!
    
    @IBOutlet weak var LQ2: UILabel!
    @IBOutlet weak var L10: UIButton!
    @IBOutlet weak var L11: UIButton!
    @IBOutlet weak var L12: UIButton!
    @IBOutlet weak var L13: UIButton!
    @IBOutlet weak var L14: UIButton!
    @IBOutlet weak var L15: UIButton!
    @IBOutlet weak var L16: UIButton!
    @IBOutlet weak var L17: UIButton!
    @IBOutlet weak var L18: UIButton!
    
    var languages = [UIButton]()
    
    var label:String = ""
    
    @IBOutlet weak var SkipButton: UIButton!
    
    //CHECKUP PAGE BUTTONS
    @IBOutlet weak var checkBackground: UIView!
    @IBOutlet weak var DQ: UILabel!
    @IBOutlet weak var districtLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var YesButton: UIButton!
    @IBOutlet weak var NoButton: UIButton!
    
    //Load in the current roadmap from the user defaults storage
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    //Save a date on entry to the storyboard
    var timeEntered:Date = Date()
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round the storyboard elements
        if(Button1 != nil){
            buttonBox.append(Button1!)
            buttonBox.append(Button2!)
            buttonBox.append(Button3!)
            buttonBox.append(Button4!)
            buttonBox.append(Button5!)
            buttonBox.append(Button6!)
            buttonBox.append(Button7!)
            buttonBox.append(Button8!)
            buttonBox.append(Button9!)
            buttonBox.append(Button0!)
            buttonBox.append(submitButton!)
            
            for button in buttonBox{
                button.layer.cornerRadius = button.frame.height/2
                
                button.layer.shadowRadius = 5
                button.layer.shadowOpacity = 0.8
                button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            }
            
            submitButton?.layer.cornerRadius = 15
            
            PINView?.layer.cornerRadius = 15
            PINView?.layer.shadowRadius = 5
            PINView?.layer.shadowOpacity = 0.8
            PINView?.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            
        }
        
        if(District1 != nil){
            buttonBox = []
            buttonBox.append(District1)
            buttonBox.append(District2)
            
            for button in buttonBox{
                button.layer.cornerRadius = 15
                
                button.layer.shadowRadius = 5
                button.layer.shadowOpacity = 0.8
                button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            }
            
            distLabel?.layer.cornerRadius = 15
            distLabel?.layer.shadowRadius = 5
            distLabel?.layer.shadowOpacity = 0.8
            distLabel?.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        }
        
        if(L1 != nil){
            buttonBox = []
            buttonBox.append(L1)
            buttonBox.append(L2)
            buttonBox.append(L3)
            buttonBox.append(L4)
            buttonBox.append(L5)
            buttonBox.append(L6)
            buttonBox.append(L7)
            buttonBox.append(L8)
            buttonBox.append(L9)
            
            for button in buttonBox{
                button.layer.borderWidth = 1
                button.layer.shadowRadius = 5
                button.layer.shadowOpacity = 0.8
                button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            }
            LangBackground.layer.cornerRadius = 15
            LangBackground.layer.shadowRadius = 5
            LangBackground.layer.shadowOpacity = 0.8
            LangBackground.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            
            NextPage.layer.cornerRadius = 15
            NextPage.layer.shadowRadius = 5
            NextPage.layer.shadowOpacity = 0.8
            NextPage.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            
            LQ.layer.cornerRadius = 15
            LQ.layer.shadowRadius = 5
            LQ.layer.shadowOpacity = 0.8
            LQ.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        }
        
        if(L10 != nil){
            buttonBox = []
            buttonBox.append(L10)
            buttonBox.append(L11)
            buttonBox.append(L12)
            buttonBox.append(L13)
            buttonBox.append(L14)
            buttonBox.append(L15)
            buttonBox.append(L16)
            buttonBox.append(L17)
            buttonBox.append(L18)
            buttonBox.append(SkipButton)
            
            for button in buttonBox{
                button.layer.borderWidth = 1
                
                button.layer.shadowRadius = 5
                button.layer.shadowOpacity = 0.8
                button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            }
            
            SkipButton.layer.cornerRadius = 15
            
            LangBackground2.layer.cornerRadius = 15
            LangBackground2.layer.shadowRadius = 5
            LangBackground2.layer.shadowOpacity = 0.8
            LangBackground2.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            
            LQ2.layer.cornerRadius = 15
            LQ2.layer.shadowRadius = 5
            LQ2.layer.shadowOpacity = 0.8
            LQ2.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        }
        
        if (YesButton != nil) {
            buttonBox = []
            buttonBox.append(YesButton)
            buttonBox.append(NoButton)
            
            labelBox = []
            labelBox.append(DQ)
            labelBox.append(languageLabel)
            labelBox.append(districtLabel)
            
            for button in buttonBox{
                button.layer.cornerRadius = 15
                button.layer.shadowRadius = 5
                button.layer.shadowOpacity = 0.8
                button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            }
            
            for label in labelBox{
                label.layer.cornerRadius = 15
                
                label.layer.shadowRadius = 5
                label.layer.shadowOpacity = 0.8
                label.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            }
            
            checkBackground?.layer.cornerRadius = 15
            checkBackground?.layer.shadowRadius = 5
            checkBackground?.layer.shadowOpacity = 0.8
            checkBackground?.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        }
        
            //Prevent the user from typing into the PINView
            PINView?.isEnabled = false
        
        //Get the selected language and add it to the current language label for the checkup page
        let newLanguageLabel:String = [languageLabel?.text, UserDefaults.standard.string(forKey: "LanguageName") ].compactMap({$0}).joined(separator:" ")
        
        //Set the language label to the string we just created above
        languageLabel?.text = newLanguageLabel
        
        //Get the selected district and add it to the current district label for the checkup page
        let newDistrictLabel:String = [districtLabel?.text, UserDefaults.standard.string(forKey: "District") ].compactMap({$0}).joined(separator:" ")
        
        //Set the district label to the string we just created above
        districtLabel?.text = newDistrictLabel
    }
    
    //On the initial view controller load, right as the view controller is about to be displayed
    override func viewWillAppear(_ animated: Bool) {
        SkipButton?.titleLabel?.text = "Skip"
    }
    
    //On the initial view controller load, when the view controller first appears
    override func viewDidAppear(_ animated: Bool) {
        

        
        //If on the main signup page (the page with the PIN)
        if(submitButton != nil){
            
            //Create an alert explaining to the user what they can do here
            let alertController = UIAlertController(title: "Just a heads up", message:
                "You can use any length PIN number you would like.", preferredStyle: .alert)
            
            //Add a dismiss button to the alert
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            
            //Present the alert to the user
            self.present(alertController, animated: false, completion: nil)
        }
        
    }
    
    func cornersAndShadows(_ sender: UIButton){
        sender.layer.cornerRadius = 15
        sender.layer.shadowRadius = 5
        sender.layer.shadowOpacity = 0.8
        sender.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
    }
    //Function connected to the buttons of the PIN pad so that they update the PINView correctly
    @IBAction func numberButtonPress(_ sender: Any){
        
        //Get the label of the button that was pressed
        self.label = (sender as! UIButton).titleLabel!.text!
        
        //Add the label of the button that was pressed to the current number label
        PINView?.text = ((PINView?.text ?? "")+self.label)
    }
    
    //Toggle whether the PIN is currently hidden or not
    @IBAction func ShowButton(_ sender: Any) {
        if(PINView?.isSecureTextEntry == true){
            PINView?.isSecureTextEntry = false
            showButt?.setTitle("Hide", for: .normal)
        }else{
            PINView?.isSecureTextEntry = true
            showButt?.setTitle("Show", for: .normal)
        }
    }
    
    //Initialize the signup protocols
    @IBAction func SubmitButton(_ sender: Any) {
        
        //Assuming that they have put a new PIN in
        if(PINView?.text != ""){
            
            //Get all key entries in the user defaults storage
            let AllKeys = UserDefaults.standard.dictionaryRepresentation().keys
            
            //Delete all key entries in the user defaults storage
            for key in AllKeys{
                UserDefaults.standard.removeObject(forKey: key)
            }
            
            //Make a blank roadmap
            RoadMap = Array()
            
            //Set the user defaults storage entry for the new PIN
            UserDefaults.standard.set(PINView?.text, forKey: "PIN")
            
            //Calculate the time spent on the signup page
            let timeSpent = Date().timeIntervalSince(timeEntered)
            
            //Append the entrance time to the roadmap
            RoadMap.append("Entered Signup PIN Screen at: \(timeEntered)")
            
            //Append the time spent here to the roadmap
            RoadMap.append("Exited  Signup PIN Screen after: \(timeSpent) seconds")
            
            //Create a new time entered date
            timeEntered = Date()
            
            //Append the time entry for the district screen
            RoadMap.append("Entered District Screen at: \(timeEntered)")
            
            //Save the new roadmap to the user defaults storage
            UserDefaults.standard.set(RoadMap, forKey: "RoadMap")

            //Prepare the district controller view controller
            let districtController = self.storyboard!.instantiateViewController(withIdentifier: "District")
            
            //Present the district controller to the user
            self.show(districtController, sender:self)
        }
    }
    
    //Function to determine the district selected
    @IBAction func DistrictSelected(_ sender: Any) {
        
        let label = (sender as! UIButton).titleLabel!.text!
        
        //Set the user defaults storage key for district to 1
        UserDefaults.standard.set(String(label.last!),forKey: "District")
        
        //Add a roadmap entry as this function exits the district screen
        let timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited District Screen after: \(timeSpent) seconds")
        
        //Add a roadmap entry for entering the language screen
        timeEntered = Date()
        RoadMap.append("Entered Language Screen at: \(timeEntered)")
        
        //Write a user defaults storage entry for the updated roadmap
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        //Set default counts for the news and apps options
        let defaultCount:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        
        //Write the default counts to the user defaults for both apps and news
        UserDefaults.standard.set(defaultCount, forKey: "newsCount")
        UserDefaults.standard.set(defaultCount, forKey: "appCount")
    }
    
    //Move to the second page of languages
    @IBAction func newLanguages(_ sender: Any) {
        print("Language wasn't on page one")
    }
    
    //If no language is selected
    @IBAction func Skip(_ sender: Any) {
        
        //Calculate time spent on the languages pages
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add a new exit entry to the roadmap
        RoadMap.append("Exited  Language Screen after: \(timeSpent) seconds")
        
        //Create a new date object
        timeEntered = Date()
        
        //Add the new time entered to the roadmap
        RoadMap.append("Entered Checkup Screen at: \(timeEntered)")
        
        //Write the updated roadmap to the user defaults storage
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
       //Set the user defaults storage key to the identifier for english
        UserDefaults.standard.set("English",forKey:"LanguageName")
        UserDefaults.standard.set("en",forKey: "Language")
        
        //Create a new check up controller storyboard to be presented to the user
        let checkupController = self.storyboard!.instantiateViewController(withIdentifier: "Checkup")
        
        //Present the check up controller to the user
        self.show(checkupController, sender:self)
    }
    
    //If a language is selected
    @IBAction func Languages(_ sender:UIButton) {
        
        //Calculate the time spent on the languages pages
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add a new exit entry to the roadmap
        RoadMap.append("Exited  Language Screen after: \(timeSpent) seconds")
        
        //Create a new date object for use with the time spent on the checkup page
        timeEntered = Date()
        
        //Add a roadmap entry for entering the checkup page
        RoadMap.append("Entered Checkup Screen at: \(timeEntered)")
        
        //Send the updated roadmap to the user defaults storage
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")

        //Check the sender of the click and set language accordingly
        if(sender == L1){
            print("English")
            
            UserDefaults.standard.set("en",forKey:"Language")
            UserDefaults.standard.set("English",forKey:"LanguageName")
        }
        
        if(sender == L2){
            print("French")
            UserDefaults.standard.set("fr",forKey:"Language")
            UserDefaults.standard.set("French",forKey:"LanguageName")

            
        }
        
        if(sender == L3){
            print("Spanish")
            UserDefaults.standard.set("es",forKey:"Language")
            UserDefaults.standard.set("Spanish",forKey:"LanguageName")
        }
        
        if(sender == L4){
            print("German")
            UserDefaults.standard.set("de",forKey:"Language")
            UserDefaults.standard.set("German",forKey:"LanguageName")
        }
        
        if(sender == L5){
            print("Portuguese")
            UserDefaults.standard.set("pt",forKey:"Language")
            UserDefaults.standard.set("Portuguese",forKey:"LanguageName")
        }
        
        if(sender == L6){
            print("Swahili")
            UserDefaults.standard.set("sw",forKey:"Language")
            UserDefaults.standard.set("Swahili",forKey:"LanguageName")
        }
        
        if(sender == L7){
            print("Swedish")
            UserDefaults.standard.set("sv",forKey:"Language")
            UserDefaults.standard.set("Swedish",forKey:"LanguageName")
        }
        
        if(sender == L8){
            print("Italian")
            UserDefaults.standard.set("it",forKey:"Language")
            UserDefaults.standard.set("Italian",forKey:"LanguageName")
        }
        
        if(sender == L9){
            print("Russian")
            UserDefaults.standard.set("ru",forKey:"Language")
            UserDefaults.standard.set("Russian",forKey:"LanguageName")
        }
        
        if(sender == L10){
            print("Nepali")
            UserDefaults.standard.set("ne",forKey:"Language")
            UserDefaults.standard.set("Nepali",forKey:"LanguageName")
        }
        
        if(sender == L11){
            print("Arabic")
            UserDefaults.standard.set("ar",forKey:"Language")
            UserDefaults.standard.set("Arabic",forKey:"LanguageName")
        }
        
        if(sender == L12){
            print("Hindi")
            UserDefaults.standard.set("hi",forKey:"Language")
            UserDefaults.standard.set("Hindi",forKey:"LanguageName")
        }
        
        if(sender == L13){
            print("Punjabi")
            UserDefaults.standard.set("pa",forKey:"Language")
            UserDefaults.standard.set("Punjabi",forKey:"LanguageName")
        }
        
        if(sender == L14){
            print("Chinese")
            UserDefaults.standard.set("zh",forKey:"Language")
            UserDefaults.standard.set("Chinese",forKey:"LanguageName")
        }
        
        if(sender == L15){
            print("Japanese")
            UserDefaults.standard.set("ja",forKey:"Language")
            UserDefaults.standard.set("Japanese",forKey:"LanguageName")
        }
        
        if(sender == L16){
            print("Hebrew")
            UserDefaults.standard.set("he",forKey:"Language")
            UserDefaults.standard.set("Hebrew",forKey:"LanguageName")
        }
        
        if(sender == L17){
            print("Bangla")
            UserDefaults.standard.set("bn",forKey:"Language")
            UserDefaults.standard.set("Bangla",forKey:"LanguageName")
        }
        
        if(sender == L18){
            print("Vietnamese")
            UserDefaults.standard.set("vi",forKey:"Language")
            UserDefaults.standard.set("Vietnamese ",forKey:"LanguageName")
        }
        
        
        //Create a checkup controller to be presented to the user
        let checkupController = self.storyboard!.instantiateViewController(withIdentifier: "Checkup")
        
        //Present the checkup controller to the user
        self.show(checkupController, sender: self)
    }
    
    //Checkup was not successful and information needs to be re-entered
    @IBAction func goBack(_ sender: Any) {
        
        //Calculate time spent on the checkup page
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add time spent entry to the roadmap
        RoadMap.append("Exited  Checkup Screen after: \(timeSpent) seconds")
        
        //Write the updated roadmap to the user defaults storage
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")

        //Create a new district controller to be presented to the user
        let districtController = self.storyboard!.instantiateViewController(withIdentifier: "District")
        
        //Present the new district controller to the user
        self.show(districtController, sender:self)
    }
    
    //Checkup was successful, information can be saved and the user can proceed to the main hub
    @IBAction func checkUpSuccess(_ sender: Any) {
        
        //Calculate time spent on the checkup page
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add the time spent on the checkup page to the roadmap
        RoadMap.append("Exited  Checkup Screen after: \(timeSpent) seconds")
        
        //Write the updated roadmap to the user defaults storage
        UserDefaults.standard.set(RoadMap, forKey: "RoadMap")
    }
}
