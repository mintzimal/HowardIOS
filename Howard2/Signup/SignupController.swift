//
//  SignupController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import Localize_Swift

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
    
    //DISTRICT PAGE BUTTONS
    @IBOutlet weak var District1: UIButton!
    @IBOutlet weak var District2: UIButton!
    
    //LANGUAGE PAGE BUTTONS
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
    
    @IBOutlet weak var SkipButton: UIButton!
    
    //CHECKUP PAGE BUTTONS
    @IBOutlet weak var districtLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var YesButton: UIButton!
    @IBOutlet weak var NoButton: UIButton!
    
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    var timeEntered:Date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //Do any additional setup after loading the view.
        
            submitButton?.layer.cornerRadius = 15
            PINView?.layer.cornerRadius = 15

            Button1?.layer.cornerRadius = 15
            Button2?.layer.cornerRadius = 15
            Button3?.layer.cornerRadius = 15
            Button4?.layer.cornerRadius = 15
            Button5?.layer.cornerRadius = 15
            Button6?.layer.cornerRadius = 15
            Button7?.layer.cornerRadius = 15
            Button8?.layer.cornerRadius = 15
            Button9?.layer.cornerRadius = 15
        
            District1?.layer.cornerRadius = 15
            District2?.layer.cornerRadius = 15
        
            L1?.layer.borderWidth = 3
            L2?.layer.borderWidth = 3
            L3?.layer.borderWidth = 3
            L4?.layer.borderWidth = 3
            L5?.layer.borderWidth = 3
            L6?.layer.borderWidth = 3
            L7?.layer.borderWidth = 3
            L8?.layer.borderWidth = 3
            L9?.layer.borderWidth = 3
            L10?.layer.borderWidth = 3
            L11?.layer.borderWidth = 3
            L12?.layer.borderWidth = 3
            L13?.layer.borderWidth = 3
            L14?.layer.borderWidth = 3
            L15?.layer.borderWidth = 3
            L16?.layer.borderWidth = 3
            L17?.layer.borderWidth = 3
            L18?.layer.borderWidth = 3
        
            YesButton?.layer.cornerRadius = 15
            NoButton?.layer.cornerRadius = 15
        
            PINView?.isEnabled = false
        
        
        
        var newLanguageLabel:String = [languageLabel?.text, UserDefaults.standard.string(forKey: "LanguageName") ].compactMap({$0}).joined(separator:" ")
        
        languageLabel?.text = newLanguageLabel
        
        var newDistrictLabel:String = [districtLabel?.text, UserDefaults.standard.string(forKey: "District") ].compactMap({$0}).joined(separator:" ")
        
        districtLabel?.text = newDistrictLabel
    }
    
    override func viewWillAppear(_ animated: Bool) {
        SkipButton?.titleLabel?.text = "Skip"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if(submitButton != nil){
            
            let alertController = UIAlertController(title: "Just a heads up", message:
                "You can use any length PIN number you would like.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            
            self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func Add1(_ sender: Any) {
        let text = (PINView?.text ?? "")+"1"
        PINView?.text = text
    }
    
    @IBAction func Add2(_ sender: Any) {
        let text = (PINView?.text ?? "")+"2"
        PINView?.text = text
    }
    
    @IBAction func Add3(_ sender: Any) {
        let text = (PINView?.text ?? "")+"3"
        PINView?.text = text
    }
    
    @IBAction func Add4(_ sender: Any) {
        let text = (PINView?.text ?? "")+"4"
        PINView?.text = text
    }
    
    @IBAction func Add5(_ sender: Any) {
        let text = (PINView?.text ?? "")+"5"
        PINView?.text = text
    }
    
    @IBAction func Add6(_ sender: Any) {
        let text = (PINView?.text ?? "")+"6"
        PINView?.text = text
    }
    
    @IBAction func Add7(_ sender: Any) {
        let text = (PINView?.text ?? "")+"7"
        PINView?.text = text
    }
    
    @IBAction func Add8(_ sender: Any) {
        let text = (PINView?.text ?? "")+"8"
        PINView?.text = text
    }
    
    @IBAction func Add9(_ sender: Any) {
        let text = (PINView?.text ?? "")+"9"
        PINView?.text = text
    }
    
    @IBAction func ShowButton(_ sender: Any) {
        if(PINView?.isSecureTextEntry == true){
            PINView?.isSecureTextEntry = false
            showButt?.setTitle("Hide", for: .normal)
        }else{
            PINView?.isSecureTextEntry = true
            showButt?.setTitle("Show", for: .normal)
        }
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        
        if(PINView?.text != ""){
            
            let AllKeys = UserDefaults.standard.dictionaryRepresentation().keys
            
            for key in AllKeys{
                UserDefaults.standard.removeObject(forKey: key)
            }
            
            RoadMap = Array()
            
            UserDefaults.standard.set(PINView?.text, forKey: "PIN")
            
            var timeSpent = Date().timeIntervalSince(timeEntered)
            
            RoadMap.append("Entered Signup PIN Screen at: \(timeEntered)")
            
            RoadMap.append("Exited  Signup PIN Screen after: \(timeSpent) seconds")
            
            timeEntered = Date()
            
            RoadMap.append("Entered District Screen at: \(timeEntered)")
            
            UserDefaults.standard.set(RoadMap, forKey: "RoadMap")
            
            print(RoadMap)
            
            let districtController = self.storyboard!.instantiateViewController(withIdentifier: "District")
            
            self.present(districtController, animated: false, completion: nil)
            
            
            
//
//            let viewController:UIViewController = UIStoryboard(name: "District", bundle: nil).instantiateViewController(withIdentifier: "District") as UIViewController
//            // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
//
//            self.present(viewController, animated: false, completion: nil)
        }
    }
    
    @IBAction func District1Selected(_ sender: Any) {
        
        UserDefaults.standard.set(1,forKey: "District")
        
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited District Screen after: \(timeSpent) seconds")
        
        timeEntered = Date()
        RoadMap.append("Entered Language Screen at: \(timeEntered)")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        var defaultCount:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        
        UserDefaults.standard.set(defaultCount, forKey: "newsCount")
        UserDefaults.standard.set(defaultCount, forKey: "appCount")
        
        print(RoadMap)
        
//        let viewController:UIViewController = UIStoryboard(name: "Language", bundle: nil).instantiateViewController(withIdentifier: "Language") as UIViewController
//
//        self.present(viewController, animated: false, completion: nil)
    }
    
    @IBAction func District2Selected(_ sender: Any) {
        
        UserDefaults.standard.set(2,forKey: "District")
        
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited District Screen after: \(timeSpent) seconds")
        
        timeEntered = Date()
        RoadMap.append("Entered Language Screen at: \(timeEntered)")
        
        UserDefaults.standard.set(RoadMap, forKey: "RoadMap")
        
        print(RoadMap)
        
//        let viewController:UIViewController = UIStoryboard(name: "Language", bundle: nil).instantiateViewController(withIdentifier: "Language") as UIViewController
//
//        self.present(viewController, animated: false, completion: nil)
    }
    
    
    @IBAction func newLanguages(_ sender: Any) {
        
//        let viewController:UIViewController = UIStoryboard(name: "Language2", bundle: nil).instantiateViewController(withIdentifier: "Language2") as UIViewController
//
//        self.present(viewController, animated: false, completion: nil)
        
        print("Language wasn't on page one")
        
    }
    
    @IBAction func Skip(_ sender: Any) {
        
        var timeSpent = Date().timeIntervalSince(timeEntered)
        
        RoadMap.append("Exited  Language Screen after: \(timeSpent) seconds")
        
        timeEntered = Date()
        
        RoadMap.append("Entered Checkup Screen at: \(timeEntered)")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        print(RoadMap)
        
        UserDefaults.standard.set("English",forKey:"LanguageName")
        UserDefaults.standard.set("en",forKey: "Language")
        
        let checkupController = self.storyboard!.instantiateViewController(withIdentifier: "Checkup")
        
        self.present(checkupController, animated: false, completion: nil)
    }
    
    @IBAction func Languages(_ sender:UIButton) {
        
        var timeSpent = Date().timeIntervalSince(timeEntered)
        
        RoadMap.append("Exited  Language Screen after: \(timeSpent) seconds")
        
        timeEntered = Date()
        
        RoadMap.append("Entered Checkup Screen at: \(timeEntered)")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        print(RoadMap)
        
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
        
        
        
        let checkupController = self.storyboard!.instantiateViewController(withIdentifier: "Checkup")
        
        self.present(checkupController, animated: false, completion: nil)
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        var timeSpent = Date().timeIntervalSince(timeEntered)
        
        RoadMap.append("Exited  Checkup Screen after: \(timeSpent) seconds")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        print(RoadMap)
        
        let districtController = self.storyboard!.instantiateViewController(withIdentifier: "District")
        
        self.present(districtController, animated: false, completion: nil)
    }
    
    @IBAction func checkUpSuccess(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        
        RoadMap.append("Exited  Checkup Screen after: \(timeSpent) seconds")
        
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
