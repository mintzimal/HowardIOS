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
    
    @IBOutlet weak var LogoutButton: UIButton!
    @IBOutlet weak var HomeButton: UIButton!
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
    
    @IBOutlet weak var AppsLabel: UILabel!
    
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    var timeEntered:Date = Date()
    
    var appCount:[Int] = UserDefaults.standard.array(forKey: "appCount") as? [Int] ?? [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    var arrayOfApps = [
        appStruct(id: 0, title: "Medication Manager", text: "Helpful daily reminders", image: "PillReminder.png"),
        appStruct(id: 1, title: "Google Calender", text: "So everything is in one place",image: "Calender.png"),
        appStruct(id: 2, title: "Learn Something New", text: "New Tricks for Everyone",image: "thinker.png"),
        appStruct(id: 3, title: "Youtube", text: "Watch YouTube right from this app!",image: "youTube.png"),
        appStruct(id: 4, title: "Xylophone", text: "Mess with a basic instrument",image: "xylophone.jpg"),
        appStruct(id: 5, title: "GMT Bus Guide", text: "See when transportation services arrives",image: "bus.png"),
        appStruct(id:6, title: "Higher Ground Live Music", text: "Check performance schedules",image: "concert.jpg"),
        appStruct(id:7, title: "Check-In Reminders", text: "Receive messages from your safety connection specialist",image: "messages.jpg"),
        appStruct(id:8, title: "Motivational", text: "Get motivational messages everyday!",image: "motivation.jpg"),
        appStruct(id:9, title: "Text to Speech", text: "Type what you want to vocalize",image: "speech.jpeg"),
        appStruct(id:10, title: "GMT Bus Schedule Links", text: "Displays information about city public transit",image: "bus.png"),
        appStruct(id:11, title: "Flynn Show Schedule", text: "Look at upcoming plays/performances", image: "curtain.jpg" ),
        appStruct(id:12, title: "Roxie Movie Schedule", text: "Local movie theatre schedules", image: "Roxie.jpg"),
        appStruct(id:13, title: "ECHO Science Center", text: "See what's happening at the local aquarium", image: "Echo.jpg"),
        appStruct(id:14, title: "Burlington Weather", text: "The Local Forcast",image: "weather.jpg"),
        appStruct(id:15, title: "Howard Center Main Site", text: "The Central Page for your HC Needs", image: "howardCenter.jpg"),
        appStruct(id:16, title: "Green Mountain Self Advocates",text: "Everyday Dreams, Everyday Relationships, Everyday Pride", image: "Green Mountain.png")
        
    ]
    
    private var funFacts:String = "https://www.mentalfloss.com/amazingfactgenerator"
    private var calender:String = "https://calendar.google.com/calendar/"
    private var youtube:String = "https://youtube.com"
    
    private var GMTGuide:String = "https://www.connectingcommuters.org/wp-content/uploads/2019/02/Chittenden-Transportation-Guide.pdf"
    private var GMTQuick:String = "http://ridegmt.com/gmt-schedules/"
    private var Motivational:String = "https://www.brainyquote.com/quote_of_the_day"
    private var HigherGround:String = "https://www.highergroundmusic.com/"
    private var Flynn:String = "https://www.flynncenter.org/calendar.html"
    private var Roxie:String = "http://merrilltheatres.net/showtimes.html"
    private var Echo:String = "https://www.echovermont.org/"
    private var weather:String = "https://weather.com/weather/today/l/5b32ed00e546ee2f461bd16b210ec2e41f6b99d20a92d7718d13d36d46c86104"
    private var howardCenter:String = "https://howardcenter.org/"
    private var GMSA:String = "http://www.gmsavt.org/"
    
    
    
    @IBAction func refresh(_ sender: Any) {
        let selectedApps:[Int] = UserDefaults.standard.array(forKey: "AppSelection") as? [Int] ?? [1,2,3,4,5,6]
        
        print("You Loaded:" , selectedApps)
        
        UserDefaults.standard.set(try? PropertyListEncoder().encode(arrayOfApps), forKey:"AppFiles")
        
        if selectedApps.count >= 1 {
            LabelOne.text = arrayOfApps[selectedApps[0]].title.localized()
            AppOne.setImage(UIImage(named: arrayOfApps[selectedApps[0]].image), for: .normal)
        }
        if selectedApps.count >= 2 {
            LabelTwo.text = arrayOfApps[selectedApps[1]].title.localized()
            AppTwo.setImage(UIImage(named: arrayOfApps[selectedApps[1]].image), for: .normal)
        }
        if selectedApps.count >= 3 {
            LabelThree.text = arrayOfApps[selectedApps[2]].title.localized()
            AppThree.setImage(UIImage(named: arrayOfApps[selectedApps[2]].image), for: .normal)
        }
        if selectedApps.count >= 4 {
            LabelFour.text = arrayOfApps[selectedApps[3]].title.localized()
            AppFour.setImage(UIImage(named: arrayOfApps[selectedApps[3]].image), for: .normal)
        }
        if selectedApps.count >= 5 {
            LabelFive.text = arrayOfApps[selectedApps[4]].title.localized()
            AppFive.setImage(UIImage(named: arrayOfApps[selectedApps[4]].image), for: .normal)
        }
        if selectedApps.count >= 6 {
            LabelSix.text = arrayOfApps[selectedApps[5]].title.localized()
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
        if(Label == arrayOfApps[0].title.localized()){
            //Medication Manager Calls
            appCount[0] += 1
        }
        if(Label == arrayOfApps[1].title.localized()){
            //Google Calender Calls
            appCount[1] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.calender)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[2].title.localized()){
            //Learn Something New Calls
            appCount[2] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.funFacts)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[3].title.localized()){
            //Youtube Calls
            appCount[3] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.youtube)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[4].title.localized()){
            //Xylophone Calls
            appCount[4] += 1
            
            let viewController:UIViewController = UIStoryboard(name: "Xylophone", bundle: nil).instantiateViewController(withIdentifier: "Xylo") as UIViewController
            
            self.present(viewController, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[5].title.localized()){
            //GMT Bus Schedule Calls
            appCount[5] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.GMTGuide)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[6].title.localized()){
            //Higher Ground Live Music Calls
            appCount[6] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.HigherGround)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[7].title.localized()){
            //Check-In Reminders
            appCount[7] += 1
            
            let viewController:UIViewController = UIStoryboard(name: "checkins", bundle: nil).instantiateViewController(withIdentifier: "Checkins") as UIViewController
            
            self.present(viewController, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[8].title.localized()){
            //Motivational Calls
            appCount[8] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.Motivational)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[9].title.localized()){
            //Text To Speech Calls
            appCount[9] += 1
            
            let viewController:UIViewController = UIStoryboard(name: "TextToSpeech", bundle: nil).instantiateViewController(withIdentifier: "TextToSpeech") as UIViewController
            
            self.present(viewController, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[10].title.localized()){
            //GMT Bus Schedule Calls
            appCount[10] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.GMTQuick)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[11].title.localized()){
            //Flynn Calls
            appCount[11] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.Flynn)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[12].title.localized()){
            //Roxie Movie Calls
            appCount[12] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.Roxie)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[13].title.localized()){
            //ECHO Calls
            appCount[13] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.Echo)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[14].title.localized()){
            //Burlington Weather Calls
            appCount[14] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.weather)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[15].title.localized()){
            //Howard Center Main Site Calls
            appCount[15] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.howardCenter)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        if(Label == arrayOfApps[16].title.localized()){
            //Green Mountain Self Advocates Calls
            appCount[16] += 1
            
            let svc = SFSafariViewController(url: NSURL(string: self.GMSA)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        UserDefaults.standard.set(appCount,forKey: "appCount")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LogoutButton.isHidden = true
        
         if UserDefaults.standard.bool(forKey: "disableNews") && UserDefaults.standard.bool(forKey: "disableHelp") {
            
            HomeButton.isHidden = true
            
            if !UserDefaults.standard.bool(forKey: "disablePIN"){
                
                LogoutButton.isHidden = false
            }
            
        }
        
        
        refresh(refreshButton)
        
        AppOne.layer.borderWidth = 3
        AppTwo.layer.borderWidth = 3
        AppThree.layer.borderWidth = 3
        AppFour.layer.borderWidth = 3
        AppFive.layer.borderWidth = 3
        AppSix.layer.borderWidth = 3
        
        LabelOne.adjustsFontSizeToFitWidth = true
        LabelTwo.adjustsFontSizeToFitWidth = true
        LabelThree.adjustsFontSizeToFitWidth = true
        LabelFour.adjustsFontSizeToFitWidth = true
        LabelFive.adjustsFontSizeToFitWidth = true
        LabelSix.adjustsFontSizeToFitWidth = true
        
        AppsLabel.adjustsFontSizeToFitWidth = true;
        AppsLabel.text = "Apps".localized()
        
        RoadMap.append("Entered Apps Screen at: \(timeEntered)")
        
        navigationController?.navigationBar.isHidden = false
        
        }

    @IBAction func LeavingApps(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited Apps Screen after: \(timeSpent) seconds")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        print(RoadMap)
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
