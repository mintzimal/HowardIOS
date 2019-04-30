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
        appStruct(id: 0, title: "Medication Manager", text: "Helpful daily reminders", image: "PillReminder"),
        appStruct(id: 1, title: "Google Calender", text: "So everything is in one place",image: "Calender.png"),
        appStruct(id: 2, title: "Learn Something New", text: "New Tricks for Everyone",image: "thinker.png"),
        appStruct(id: 3, title: "Youtube", text: "Watch YouTube right from this app!",image: "youtube"),
        appStruct(id: 4, title: "Xylophone", text: "Mess with a basic instrument",image: "xylophone.jpg"),
        appStruct(id: 5, title: "SSTA Bus Schedule", text: "See when transportation services arrives",image: "bus.jpg"),
        appStruct(id:6, title: "Higher Ground Live Music", text: "Check performance schedules",image: "concert.jpg"),
        appStruct(id:7, title: "Messages", text: "Receive messages from your safety connection specialist",image: "messages.jpg"),
        appStruct(id:8, title: "Motivational", text: "Get motivational messages everyday!",image: "motivation.jpg"),
        appStruct(id:9, title: "Text to Speech", text: "Type what you want to vocalize",image: "speech.jpeg")
        
    ]
    
    private var funFacts:String = "https://www.mentalfloss.com/amazingfactgenerator"
    private var calender:String = "https://calendar.google.com/calendar/"
    private var youtube:String = "https://youtube.com"
    
    @IBAction func funFactGenerator(_ sender: Any){
        let svc = SFSafariViewController(url: NSURL(string: self.funFacts)! as URL)
        self.present(svc,animated: true, completion: nil)
    }
    
    @IBAction func calenderLoader(_ sender: Any){
        let svc = SFSafariViewController(url: NSURL(string: self.calender)! as URL)
        self.present(svc,animated: true, completion: nil)
    }
    
    @IBAction func youtubeLoader(_ sender: Any){
        let svc = SFSafariViewController(url: NSURL(string: self.youtube)! as URL)
        self.present(svc,animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let selectedApps:[Int] = UserDefaults.standard.array(forKey: "AppsSelection") as? [Int] ?? [1,2,3,4,5,6]
        
        UserDefaults.standard.set(try? PropertyListEncoder().encode(arrayOfApps), forKey:"AppFiles")
        

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
