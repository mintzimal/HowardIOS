//
//  LoginController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by LoginController.swift
import UIKit

//Class definition and inheritance
class LoginController: UIViewController {
    
    //Storyboard object definitions
    @IBOutlet weak var PINView: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    //Toggles whether the pin is hidden
    @IBOutlet weak var ShowButton: UIButton!
    
    //Buttons for the PIN pad
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var Button0: UIButton!
    @IBOutlet weak var banner: UIImageView!
    
    
    
    var buttonBox:[UIButton] = []
    
    //Load in the current roadmap state
    var RoadMap:Array<String> = UserDefaults.standard.object(forKey: "RoadMap") as? Array<String> ?? Array()
    
    //Create a new date object on entrance
    var timeEntered:Date = Date()
    
    //The label for use with the PIN pad
    var label:String = ""
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonBox.append(Button1)
        buttonBox.append(Button2)
        buttonBox.append(Button3)
        buttonBox.append(Button4)
        buttonBox.append(Button5)
        buttonBox.append(Button6)
        buttonBox.append(Button7)
        buttonBox.append(Button8)
        buttonBox.append(Button9)
        buttonBox.append(Button0)
        
        //Round all of the storyboard objects
        submitButton.layer.cornerRadius = 15
        PINView.layer.cornerRadius = 15
        
        for button in buttonBox{
            button.layer.cornerRadius = button.frame.height/2
            
            button.layer.shadowRadius = 5
            button.layer.shadowOpacity = 0.8
            button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        }
        
        banner.layer.shadowRadius = 30
        banner.layer.shadowOpacity = 0.8
        banner.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        
        submitButton.layer.shadowRadius = 5
        submitButton.layer.shadowOpacity = 0.8
        submitButton.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        
        PINView.layer.shadowRadius = 5
        PINView.layer.shadowOpacity = 0.8
        PINView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
                
        //Update the time entered tracker with a new date
        timeEntered = Date()
        
        //Add the updated entrance time to the roadmap
        RoadMap.append("Entered Login PIN Screen at: \(timeEntered)")
        
        //Toggle off the ability to type directly into the PIN view text field
        PINView?.isEnabled = false
    }
    
    //Function connected to the show pin button
    @IBAction func ShowText(_ sender: Any) {
        
        //If PIN is already hidden
        if(PINView.isSecureTextEntry == true){
            
            //Unhide the PIN
            PINView.isSecureTextEntry = false
            
            //Switch the title of the button
            ShowButton.setTitle("Hide", for: .normal)
        }
        
        //If PIN is not currently hidden
        else{
            
            //Hide the PIN
            PINView.isSecureTextEntry = true
            
            //Switch the title of the button
            ShowButton.setTitle("Show", for: .normal)
        }
        
    }
    
    //Function connected to the buttons of the PIN pad so that they update the PINView correctly
    @IBAction func numberButtonPress(_ sender: Any){
        
        //Get the label of the button that was pressed
        self.label = (sender as! UIButton).titleLabel!.text!
        
        //Add the label of the button that was pressed to the current number label
        PINView.text = ((PINView?.text ?? "")+self.label)
    }
    
    //Connected to the submission button at the bottom of the PIN pad
    @IBAction func SubmitButton(_ sender: Any) {
        
        //Set correct state for logged in status in the user defaults
        UserDefaults.standard.set(true, forKey: "skipHome")
    
        //If the PIN isn't empty
        if(PINView.text != ""){
            
            //And the PIN matches the user defaults saved PIN
            if(PINView.text == UserDefaults.standard.string(forKey: "PIN") ?? "" ){
            
                //Calculate the time spent on the page
                let timeSpent = Date().timeIntervalSince(timeEntered)
                
                //Add the time spent to the Roadmap
                RoadMap.append("Exited Login PIN Screen after: \(timeSpent) seconds")
                
                //Save the Roadmap back to the user defaults storage
                UserDefaults.standard.set(RoadMap, forKey: "RoadMap")
                
                //Create a view controller reference for the main page of the app
                let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as UIViewController

                //Present the main hub to the user
                self.show(viewController, sender:self)
            }
            
            //If the PIN is not correct, reset the field and shake to show the user it was incorrect
            else {
                PINView.text = ""
                PINView.shake()
            }
        }
    }
}

//Extension of the class that the PINView object is
extension UITextField {
    
    //Animation function
    func shake() {
        
        //Define a positional animation
        let animation = CABasicAnimation(keyPath: "position")
        
        //Set duration, repetition, and loop status
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        
        //Set the rotational values for the animation
        animation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        
        //Add the animation to the text field
        layer.add(animation, forKey: "position")
    }
}
