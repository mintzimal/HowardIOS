//
//  SignupController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

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
        
        var newLanguageLabel:String = [languageLabel?.text, UserDefaults.standard.string(forKey: "Language") ].compactMap({$0}).joined(separator:" ")
        
        languageLabel?.text = newLanguageLabel
        
        var newDistrictLabel:String = [districtLabel?.text, UserDefaults.standard.string(forKey: "District") ].compactMap({$0}).joined(separator:" ")
        
        districtLabel?.text = newDistrictLabel
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
            
            UserDefaults.standard.set(PINView?.text, forKey: "PIN")
            
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
        
//        let viewController:UIViewController = UIStoryboard(name: "Language", bundle: nil).instantiateViewController(withIdentifier: "Language") as UIViewController
//
//        self.present(viewController, animated: false, completion: nil)
    }
    
    @IBAction func District2Selected(_ sender: Any) {
        
        UserDefaults.standard.set(2,forKey: "District")
        
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
        
        UserDefaults.standard.set("English",forKey:"Language")
        
        let checkupController = self.storyboard!.instantiateViewController(withIdentifier: "Checkup")
        
        self.present(checkupController, animated: false, completion: nil)
    }
    
    @IBAction func Languages(_ sender:UIButton) {
        
        if(sender == L1){
            print("English")
            
            UserDefaults.standard.set("English",forKey:"Language")
        }
        
        if(sender == L2){
            print("French")
            UserDefaults.standard.set("French",forKey:"Language")
        }
        
        if(sender == L3){
            print("Spanish")
            UserDefaults.standard.set("Spanish",forKey:"Language")
        }
        
        if(sender == L4){
            print("German")
            UserDefaults.standard.set("German",forKey:"Language")
        }
        
        if(sender == L5){
            print("Portuguese")
            UserDefaults.standard.set("Portuguese",forKey:"Language")
        }
        
        if(sender == L6){
            print("Swahili")
            UserDefaults.standard.set("Swahili",forKey:"Language")
        }
        
        if(sender == L7){
            print("Swedish")
            UserDefaults.standard.set("Swedish",forKey:"Language")
        }
        
        if(sender == L8){
            print("Italian")
            UserDefaults.standard.set("Italian",forKey:"Language")
        }
        
        if(sender == L9){
            print("Russian")
            UserDefaults.standard.set("Russian",forKey:"Language")
        }
        
        if(sender == L10){
            print("Nepalese")
            UserDefaults.standard.set("Nepalese",forKey:"Language")
        }
        
        if(sender == L11){
            print("Arabic")
            UserDefaults.standard.set("Arabic",forKey:"Language")
        }
        
        if(sender == L12){
            print("Hindi")
            UserDefaults.standard.set("Hindi",forKey:"Language")
        }
        
        if(sender == L13){
            print("Punjabi")
            UserDefaults.standard.set("Punjabi",forKey:"Language")
        }
        
        if(sender == L14){
            print("Chinese")
            UserDefaults.standard.set("Chinese",forKey:"Language")
        }
        
        if(sender == L15){
            print("Japanese")
            UserDefaults.standard.set("Japanese",forKey:"Language")
        }
        
        if(sender == L16){
            print("Hebrew")
            UserDefaults.standard.set("Hebrew",forKey:"Language")
        }
        
        if(sender == L17){
            print("Bengali")
            UserDefaults.standard.set("Bengali",forKey:"Language")
        }
        
        if(sender == L18){
            print("Vietnamese")
            UserDefaults.standard.set("Vietnamese",forKey:"Language")
        }
        
        let checkupController = self.storyboard!.instantiateViewController(withIdentifier: "Checkup")
        
        self.present(checkupController, animated: false, completion: nil)
    }
    
    @IBAction func goBack(_ sender: Any) {
        let districtController = self.storyboard!.instantiateViewController(withIdentifier: "District")
        
        self.present(districtController, animated: false, completion: nil)
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
