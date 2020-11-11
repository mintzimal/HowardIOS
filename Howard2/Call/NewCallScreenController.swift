//
//  CallScreenController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/3/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports useed by CallScreenController.swift
import UIKit
import AVFoundation

//Class definition and inheritance
class NewCallScreenController: UIViewController {
    
    //Defines the outlet for the logout button to take you back to login/signup
    @IBOutlet weak var LogoutButton: UIButton!
    
    //Defines the outlet for the home button to take you back to the main hub
    @IBOutlet weak var HomeButton: UIButton!
    
    //Defines the outlet for the segment controller quick nav features
    @IBOutlet weak var SegmentedController: UISegmentedControl!
    
    //Defines the outlet for the header logo space
    @IBOutlet weak var Header: UIImageView!
    
    //Defines the outlet for the call button (district specific)
    @IBOutlet weak var districtButton: UIButton!
    
    //Defines the outlet for the button to take you to the messaging portal
    @IBOutlet weak var messageButton: UIButton!
    
    //Dynamic message to the user explaining the page (localizable to all languages)
    @IBOutlet weak var CallLabel: UILabel!
    
    //Load in the current roadmap state from the user defaults
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    //Record a date object at moment of entry
    var timeEntered:Date = Date()
    
    //Load in the users district from their user defaults
    let District = UserDefaults.standard.integer(forKey: "District")
    
    //Function to connect the user to the correct district operator phone line
    @IBAction func callDistrictFunction(_ sender: Any) {
        
        //If the userdefaults district is the first district
        if(District == 1){
            print("Calling District One")
            
            //Call the direct operator line for district 1
            dialNumber(number: "+8027777928")
        }
        
        //If the userddefaults district is the second district
        if(District == 2){
            print("Calling District Two")
            
            //Call the direct operator line for district 2
            dialNumber(number: "+6178173687")
        }
    }
    
    //If the user selects another segment of the nav controller
    @IBAction func indexChange(_ sender: Any) {
        switch SegmentedController.selectedSegmentIndex{
            
            //If the user selects the news segment, create a new news instance and present it to the user
            case 0:
            NSLog("News")
            let NewsController = self.storyboard!.instantiateViewController(withIdentifier: "N")
            
            self.show(NewsController, sender:self)
            
        //If the user selects the apps segment, create a new apps instance and present it to the user
        case 1:
            NSLog("Apps")
            let AppController = self.storyboard!.instantiateViewController(withIdentifier: "A")
            
            self.show(AppController, sender:self)
            
        //If the user selects the message segment, create a new messages instance and present it to the user
        case 2:
            NSLog("Message")
            let MessageController = self.storyboard!.instantiateViewController(withIdentifier: "M")
            
            self.show(MessageController, sender:self)
            
        //The user is currently in the help segment, so nothing occurs if re-selecitng the help segment
        case 3:
            NSLog("Help")
        
        //If no case is selected do nothing
        default:
            break;
        }
    }
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Defines the currently selected segment (Call screen)
        SegmentedController.selectedSegmentIndex = 3
        
        //Logo blurs edges
        Header.layer.masksToBounds = true
        
        //Logo has a rounded gray shadow, offset asymetrically, with full opacity
        Header.layer.shadowRadius = 10
        Header.layer.shadowColor = UIColor.darkGray.cgColor
        Header.layer.shadowOffset = CGSize(width: 5, height: 15)
        Header.layer.shadowOpacity = 1
        
        //Logout button is hidden by default
        LogoutButton.isHidden = true
        
        //If the user has news and apps disabled
        if UserDefaults.standard.bool(forKey: "disableNews") && UserDefaults.standard.bool(forKey: "disableApps") {
            
            //Hide the home button
            HomeButton.isHidden = true
            
            //If the user does not have the pin disabled
            if !UserDefaults.standard.bool(forKey: "disablePIN"){
                
                //The logout button should be visable
                LogoutButton.isHidden = false
            }
        }
        
        //Add the time entered to the roadmap opbject
        RoadMap.append("Entered Help Screen at: \(timeEntered)")
        
        //Round the district and message buttons
        districtButton.layer.cornerRadius = 15
        messageButton.layer.cornerRadius = 15
        
        //Make sure the text for the message button is adaptively sized
        messageButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        //Set the message buttons text in any of the localized languages
        messageButton.setTitle("Message".localized(), for: .normal)
        
        //Make sure the text for the district button is adaptively sized
        districtButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        //If in the first district
        if(District == 1){
            
            //Set the call button label to a language localized version of "District 1"
            districtButton.setTitle("District 1".localized(), for: .normal)
        }
        
        //If in the second disttrict
        if(District == 2){
            
            //Set the call button label to a language localized version of "District 2"
            districtButton.setTitle("District 2".localized(), for: .normal)
        }
    }
    
    //Function that actually connects the calls
    func dialNumber(number : String) {
        
        //Set the call url to the correct format string
        if let url = URL(string: "tel://\(number)"),
            
            //If the call url can be opened do it
            UIApplication.shared.canOpenURL(url) {
            
            //openURL was depreciated in IOS 10, checks version and calls the appropriate function
            
            //Assuming IOS10+
            if #available(iOS 10, *) {
                
                //Open the url in the IOS10+ format
                UIApplication.shared.open(url, options: [:], completionHandler:nil)
            }
            else
            {
                //Otherwise reattempt the url open using the original schema
                UIApplication.shared.openURL(url)
            }
        }
        else
        {
            //If all 3 methods fail - phone probably doesn't have an IOS services enabled phone service provider, airplane mode, etc.
            print("Error calling your district, please try again")
        }
    }
    
    //Define a boolean to represent the current power state of the phones flashlight
    var isTorch = false
    
    //Outlet for a flashlight toggle button
    @IBOutlet weak var Flash: UIButton!
    
    //Function that actually toggles the flashlight on button click action from the flash button
    @IBAction func actionTorchClick(sender: AnyObject) {
        
        //Determine the version of the user's phone, create an object for the user's phone
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else { return }
        
        //The user's phone has a flashlight
        if device.hasTorch {
            
            //Flip the boolean signifier for the flashlight
            isTorch = !isTorch
            
            do {
                
                //Ensure the device is in a config locked state, such that flashlight and other media devices can be toggled
                try device.lockForConfiguration()
                
                //If the torch boolean is true, turn the flashlight on
                if isTorch == true {
                    device.torchMode = .on
                }
                
                //If the torch boolean is false, turn the flashlight off
                else {
                    device.torchMode = .off
                }
                
                //Unlock the config lock placed by the app when toggling the devices flash. NOTE: This will not work if the device does not have the permissions level granted to the app to control outside of app configuration/functionality
                device.unlockForConfiguration()
            }
                
            //If the above doesn't work the torch is not able to be toggled manually, typically due to permission descrepencies
            catch {
                print("Torch is not working.")
            }
        }
        
        //The device does not have a flashlight, this typically won't be the case on all new devices. The app is not designed to be optimized on I-devices old enough to not have a flashlight anyways so if this is ever triggered by a user it should be a point of concern. (Iphones 4+ have flashlights just for the note)
        else {
            print("Torch not compatible with device.")
        }
    }
    
    //Function activated on leaving the help page
    @IBAction func LeavingHelp(_ sender: Any) {
        
        //Calculates the time spent on the help page
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Adds the calculated time to the roadmap object
        RoadMap.append("Exited Help Screen after: \(timeSpent) seconds")
        
        //Sends the new roadmap back to the user defaults data storage
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
    }
}
