//
//  AppsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import SafariServices

struct appStruct:Codable {
    
    var id : Int
    var title : String
    var text : String
    var image : String
    
}

class AppsController: UIViewController, SFSafariViewControllerDelegate {
    
    @IBOutlet weak var refreshButton: UIButton!
    
    @IBOutlet weak var AppOne: UIButton!
    @IBOutlet weak var AppTwo: UIButton!
    @IBOutlet weak var AppThree: UIButton!
    @IBOutlet weak var AppFour: UIButton!
    @IBOutlet weak var AppFive: UIButton!
    @IBOutlet weak var AppSix: UIButton!
    
    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var LabelTwo: UILabel!
    @IBOutlet weak var LabelThree: UILabel!
    @IBOutlet weak var LabelFour: UILabel!
    @IBOutlet weak var LabelFive: UILabel!
    @IBOutlet weak var LabelSix: UILabel!
    
    var arrayOfApps = [
        appStruct(id: 0, title: "Medication Manager", text: "Helpful daily reminders", image: "PillReminder.png"),
        appStruct(id: 1, title: "Google Calender", text: "So everything is in one place",image: "Calender.png"),
        appStruct(id: 2, title: "Learn Something New", text: "New Tricks for Everyone",image: "thinker.png"),
        appStruct(id: 3, title: "Youtube", text: "Watch YouTube right from this app!",image: "youTube.png"),
        appStruct(id: 4, title: "Xylophone", text: "Mess with a basic instrument",image: "xylophone.jpg"),
        appStruct(id: 5, title: "GMT Bus Guide", text: "See when transportation services arrives",image: "bus.png"),
        appStruct(id:6, title: "Higher Ground Live Music", text: "Check performance schedules",image: "concert.jpg"),
        appStruct(id:7, title: "Messages", text: "Receive messages from your safety connection specialist",image: "messages.jpg"),
        appStruct(id:8, title: "Motivational", text: "Get motivational messages everyday!",image: "motivation.jpg"),
        appStruct(id:9, title: "Text to Speech", text: "Type what you want to vocalize",image: "speech.jpeg"),
        appStruct(id:10, title: "GMT Bus Schedule Links", text: "Displays information about city public transit",image: "bus.png"),
        appStruct(id:11, title: "Flynn Show Schedule", text: "Look at upcoming plays/performances", image: "curtain.png" )
        
    ]
    
    private var funFacts:String = "https://www.mentalfloss.com/amazingfactgenerator"
    private var calender:String = "https://calendar.google.com/calendar/"
    private var youtube:String = "https://youtube.com"
    
    private var GMTGuide:String = "http://ridegmt.com/wp-content/uploads/chittendencounty_current.pdf"
    private var GMTQuick:String = "http://ridegmt.com/gmt-schedules/"
    private var Motivational:String = "https://www.brainyquote.com/quote_of_the_day"
    private var HigherGround:String = "https://www.highergroundmusic.com/"
    private var Flynn:String = "https://www.flynncenter.org/calendar.html"
    private var Roxie:String = "http://merrilltheatres.net/showtimes.html"
    
    
    
    @IBAction func refresh(_ sender: Any) {
        let selectedApps:[Int] = UserDefaults.standard.array(forKey: "AppSelection") as? [Int] ?? [1,2,3,4,5,6]
        
        print("You Loaded:" , selectedApps)
        
        UserDefaults.standard.set(try? PropertyListEncoder().encode(arrayOfApps), forKey:"AppFiles")
        
        if selectedApps.count >= 1 {
            LabelOne.text = arrayOfApps[selectedApps[0]].title
            AppOne.setImage(UIImage(named: arrayOfApps[selectedApps[0]].image), for: .normal)
        }
        if selectedApps.count >= 2 {
            LabelTwo.text = arrayOfApps[selectedApps[1]].title
            AppTwo.setImage(UIImage(named: arrayOfApps[selectedApps[1]].image), for: .normal)
        }
        if selectedApps.count >= 3 {
            LabelThree.text = arrayOfApps[selectedApps[2]].title
            AppThree.setImage(UIImage(named: arrayOfApps[selectedApps[2]].image), for: .normal)
        }
        if selectedApps.count >= 4 {
            LabelFour.text = arrayOfApps[selectedApps[3]].title
            AppFour.setImage(UIImage(named: arrayOfApps[selectedApps[3]].image), for: .normal)
        }
        if selectedApps.count >= 5 {
            LabelFive.text = arrayOfApps[selectedApps[4]].title
            AppFive.setImage(UIImage(named: arrayOfApps[selectedApps[4]].image), for: .normal)
        }
        if selectedApps.count >= 6 {
            LabelSix.text = arrayOfApps[selectedApps[5]].title
            AppSix.setImage(UIImage(named: arrayOfApps[selectedApps[5]].image), for: .normal)
    }
    }

    
    @IBAction func ButtonSorter(sender: UIButton) {
        
    if sender == AppOne {
        
        print("App1")
        labelChecker(Label: LabelOne.text!)
    
    } else if sender == AppTwo {
        
        print("App2")
        labelChecker(Label: LabelTwo.text!)
    
    } else if sender == AppThree {
        
        print("App3")
        labelChecker(Label: LabelThree.text!)
    
    } else if sender == AppFour {
        
        print("App4")
        labelChecker(Label: LabelFour.text!)
        
    } else if sender == AppFive {
        
        print("App5")
        labelChecker(Label: LabelFive.text!)
        
    } else if sender == AppSix {
        
        print("App6")
        labelChecker(Label: LabelSix.text!)
        
    }
    }
    
    func labelChecker(Label: String){
        if(Label == arrayOfApps[0].title){
            //Medication Manager Calls
        }
        if(Label == arrayOfApps[1].title){
            //Google Calender Calls
            let svc = SFSafariViewController(url: NSURL(string: self.calender)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[2].title){
            //Learn Something New Calls
            let svc = SFSafariViewController(url: NSURL(string: self.funFacts)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[3].title){
            //Youtube Calls
            let svc = SFSafariViewController(url: NSURL(string: self.youtube)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[4].title){
            //Xylophone Calls
        }
        if(Label == arrayOfApps[5].title){
            //SSTA Bus Schedule Calls
            let svc = SFSafariViewController(url: NSURL(string: self.GMTGuide)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[6].title){
            //Higher Ground Live Music Calls
            let svc = SFSafariViewController(url: NSURL(string: self.HigherGround)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[7].title){
            //Messages
        }
        if(Label == arrayOfApps[8].title){
            //Motivational Calls
            let svc = SFSafariViewController(url: NSURL(string: self.Motivational)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[9].title){
            //Text To Speech Calls
        }
        if(Label == arrayOfApps[10].title){
            //CCTV Bus Schedule Calls
            let svc = SFSafariViewController(url: NSURL(string: self.GMTQuick)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[11].title){
            let svc = SFSafariViewController(url: NSURL(string: self.Flynn)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        refresh(refreshButton)
        
        AppOne.layer.borderWidth = 3
        AppTwo.layer.borderWidth = 3
        AppThree.layer.borderWidth = 3
        AppFour.layer.borderWidth = 3
        AppFive.layer.borderWidth = 3
        AppSix.layer.borderWidth = 3
        
        }

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
