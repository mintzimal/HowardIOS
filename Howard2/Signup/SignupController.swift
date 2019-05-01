//
//  SignupController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

class SignupController: UIViewController {
    
    
    @IBOutlet weak var PINView: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    
    @IBOutlet weak var districtSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        submitButton.layer.cornerRadius = 15
        PINView.layer.cornerRadius = 15
        
        Button1.layer.cornerRadius = 15
        Button2.layer.cornerRadius = 15
        Button3.layer.cornerRadius = 15
        Button4.layer.cornerRadius = 15
        Button5.layer.cornerRadius = 15
        Button6.layer.cornerRadius = 15
        Button7.layer.cornerRadius = 15
        Button8.layer.cornerRadius = 15
        Button9.layer.cornerRadius = 15

    }
    
    @IBAction func Add1(_ sender: Any) {
        let text = (PINView.text ?? "")+"1"
        PINView.text = text
    }
    
    @IBAction func Add2(_ sender: Any) {
        let text = (PINView.text ?? "")+"2"
        PINView.text = text
    }
    
    @IBAction func Add3(_ sender: Any) {
        let text = (PINView.text ?? "")+"3"
        PINView.text = text
    }
    
    @IBAction func Add4(_ sender: Any) {
        let text = (PINView.text ?? "")+"4"
        PINView.text = text
    }
    
    @IBAction func Add5(_ sender: Any) {
        let text = (PINView.text ?? "")+"5"
        PINView.text = text
    }
    
    @IBAction func Add6(_ sender: Any) {
        let text = (PINView.text ?? "")+"6"
        PINView.text = text
    }
    
    @IBAction func Add7(_ sender: Any) {
        let text = (PINView.text ?? "")+"7"
        PINView.text = text
    }
    
    @IBAction func Add8(_ sender: Any) {
        let text = (PINView.text ?? "")+"8"
        PINView.text = text
    }
    
    @IBAction func Add9(_ sender: Any) {
        let text = (PINView.text ?? "")+"9"
        PINView.text = text
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        
        if(PINView.text != ""){
            
            if districtSlider.value >= 1.5{
                UserDefaults.standard.set(2, forKey: "District")
            }
            
            if districtSlider.value < 1.5 {
                UserDefaults.standard.set(1, forKey: "District")
            }
        
            UserDefaults.standard.set(PINView.text, forKey: "PIN")
            
            
            let viewController:UIViewController = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateViewController(withIdentifier: "LaunchScreen") as UIViewController
            // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
            
            self.present(viewController, animated: false, completion: nil)
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
