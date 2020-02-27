//
//  AppsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by AppsController.swift
import UIKit
import SafariServices

//Class definition and inheritance
class DynamicNewsController: UIViewController, SFSafariViewControllerDelegate {
    
    //Outlets for the page buttons in the bottom third
    @IBOutlet weak var LogoutButton: UIButton!
    @IBOutlet weak var HomeButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    
    //Six buttons to be populated by the selected apps
    @IBOutlet weak var NewsOne: UIButton!
    @IBOutlet weak var NewsTwo: UIButton!
    @IBOutlet weak var NewsThree: UIButton!
    @IBOutlet weak var NewsFour: UIButton!
    @IBOutlet weak var NewsFive: UIButton!
    @IBOutlet weak var NewsSix: UIButton!
    
    //Six labels, one for each of the app buttons
    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var LabelTwo: UILabel!
    @IBOutlet weak var LabelThree: UILabel!
    @IBOutlet weak var LabelFour: UILabel!
    @IBOutlet weak var LabelFive: UILabel!
    @IBOutlet weak var LabelSix: UILabel!
    
    //Page Title
    @IBOutlet weak var NewsLabel: UILabel!
    
    //Howard Center Imagery
    @IBOutlet weak var Header: UIImageView!
    
    //Segmented controller for quickly moving between the service hubs
    @IBOutlet weak var SegmentedController: UISegmentedControl!
    
   //Load in the current roadmap state from the user defaults storage
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    //Create a new date object when the page is entered
    var timeEntered:Date = Date()
    
    //Load in the current number of times each of the news options has been selected in the past from the user defaults
    var newsCount:[Int] = UserDefaults.standard.array(forKey: "newsCount") as? [Int] ?? [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    //Array of structs each defining one of the news options
    var arrayOfNews = [
        appStruct(id: 0, title: "Seven Days", text: "Local News", image: "SD.jpg"),
        appStruct(id: 1, title: "Burlington Free Press", text: "Local News",image: "BFP.png"),
        appStruct(id: 2, title: "WCAX", text: "Local News",image: "WCAX.jpg"),
        appStruct(id: 3, title: "My Champlain Valley", text: "Local News",image: "MCV.jpg"),
        appStruct(id: 4, title: "News10", text: "Local News",image: "N10.jpg"),
        appStruct(id: 5, title: "VPR", text: "Local News",image: "VPR.jpg"),
        appStruct(id:6, title: "CNN", text: "Global News",image: "CNN.png"),
        appStruct(id:7, title: "Aljazeera", text: "Global News",image: "ALZ.png"),
        appStruct(id:8, title: "ABC", text: "Global News",image: "ABC.png"),
        appStruct(id:9, title: "Wall Street Journal", text: "Global News",image: "WSJ.png"),
        appStruct(id:10, title: "NPR", text:"Global News",image: "NPR.png"),
        appStruct(id:11, title: "Reuters", text: "Global News", image: "reuters.png" ),
        appStruct(id:12, title: "The Associated Press", text: "Global News", image: "AP.png"),
        appStruct(id:13, title: "Huffington Post", text: "Global News", image: "HP.png"),
        appStruct(id:14, title: "BBC", text: "Global News",image: "BBC.png"),
        appStruct(id:15, title: "Washington Post", text: "Global News", image: "WP.png"),
        appStruct(id:16, title: "The Guardian",text: "Global News", image: "guard.png")
    ]
    
    //URLS for news site options
    private var sevenDays:String = "https://www.sevendaysvt.com/"
    private var burlingtonFreePress:String = "https://www.burlingtonfreepress.com/"
    private var WCAX:String = "https://www.wcax.com/"
    private var myChamplainValley:String = "https://www.mychamplainvalley.com/"
    private var news10:String = "https://www.news10.com/news/vt-news"
    private var VPR:String = "https://www.vpr.org/#stream/0"
    private var CNN:String = "https://www.cnn.com/"
    private var aljazeera:String = "https://www.aljazeera.com/"
    private var ABC:String = "https://abcnews.go.com/"
    private var wallStreetJournal:String = "https://www.wsj.com/"
    private var NPR:String = "https://www.npr.org/"
    private var reuters:String = "https://www.reuters.com/"
    private var theAssociatedPress:String = "https://www.apnews.com/"
    private var huffingtonPost:String = "https://www.huffpost.com/"
    private var BBC:String = "https://www.bbc.com/news/world"
    private var washingtonPost:String = "https://www.washingtonpost.com/"
    private var theGuardian:String = "https://www.theguardian.com/world"
    
    //Function to control the segmented controller
    @IBAction func indexChanged(_ sender: Any) {
        
        switch SegmentedController.selectedSegmentIndex{
        
        //Already in the news segment, do nothing if selected
        case 0:
            NSLog("News")
           
        //Move to the apps hub
        case 1:
            NSLog("Apps")
            let AppController = self.storyboard!.instantiateViewController(withIdentifier: "A")
            
            self.show(AppController, sender:self)
            
        //Move to the message hub
        case 2:
            NSLog("Message")
            let MessageController = self.storyboard!.instantiateViewController(withIdentifier: "M")
            
            self.show(MessageController, sender:self)
            
        //Move to the help hub
        case 3:
            NSLog("Help")
            let HelpController = self.storyboard!.instantiateViewController(withIdentifier: "H")
            
            self.show(HelpController, sender:self)
            
        //If nothing is selected do nothing
        default:
            break;
        }
    }
    
    //Load in the news that the user has previously selected
    @IBAction func refresh(_ sender: Any) {
        
        //Load in the saved preferences for the news on the news page, if the user doesn't have any yet, just load in the first 6 news sites
        let selectedApps:[Int] = UserDefaults.standard.array(forKey: "NewsSelection") as? [Int] ?? [1,2,3,4,5,6]

        //Save the array of news options to the user defaults page so that the checklist populates correctly
        UserDefaults.standard.set(try? PropertyListEncoder().encode(arrayOfNews), forKey:"NewsFiles")
        
        //If there's only one selected news site, populate the first image and first title
        if selectedApps.count >= 1 {
            LabelOne.text = arrayOfNews[selectedApps[0]].title.localized()
            NewsOne.setImage(UIImage(named: arrayOfNews[selectedApps[0]].image), for: .normal)
        }
        
        //If there's a second selected news site, populate the second image and second title
        if selectedApps.count >= 2 {
            LabelTwo.text = arrayOfNews[selectedApps[1]].title.localized()
            NewsTwo.setImage(UIImage(named: arrayOfNews[selectedApps[1]].image), for: .normal)
        }
        
        //If there's a third selected news site, populate the third image and third title
        if selectedApps.count >= 3 {
            LabelThree.text = arrayOfNews[selectedApps[2]].title.localized()
            NewsThree.setImage(UIImage(named: arrayOfNews[selectedApps[2]].image), for: .normal)
        }
        
        //If there's a fourth selected news site, populate the fourth image and fourth title
        if selectedApps.count >= 4 {
            LabelFour.text = arrayOfNews[selectedApps[3]].title.localized()
            NewsFour.setImage(UIImage(named: arrayOfNews[selectedApps[3]].image), for: .normal)
        }
        
        //If there's a fifth selected news site, populate the fifth image and fifth title
        if selectedApps.count >= 5 {
            LabelFive.text = arrayOfNews[selectedApps[4]].title.localized()
            NewsFive.setImage(UIImage(named: arrayOfNews[selectedApps[4]].image), for: .normal)
        }
        
        //If there's a sixth selected news site, populate the sixth image and sixth title
        if selectedApps.count >= 6 {
            LabelSix.text = arrayOfNews[selectedApps[5]].title.localized()
            NewsSix.setImage(UIImage(named: arrayOfNews[selectedApps[5]].image), for: .normal)
    }
    }

    //Function that determines the origin of the click and sends it to the news router
    @IBAction func ButtonSorter(sender: UIButton) {
    
    //If the first news site was clicked - send it's title to the news site router
    if sender == NewsOne {
        labelChecker(Label: LabelOne.text!)
    }
    
    //If the second news site was clicked - send it's title to the news site router
    else if sender == NewsTwo {
        labelChecker(Label: LabelTwo.text!)
    }
    
    //If the third news site was clicked - send it's title to the news site router
    else if sender == NewsThree {
        labelChecker(Label: LabelThree.text!)
    }
    
    //If the fourth news site was clicked - send it's title to the news site router
    else if sender == NewsFour {
        labelChecker(Label: LabelFour.text!)
    }
    
    //If the fifth news site was clicked - send it's title to the news site router
    else if sender == NewsFive {
        labelChecker(Label: LabelFive.text!)
    }
    
    //If the sixth news site was clicked - send it's title to the news site router
    else if sender == NewsSix {
        labelChecker(Label: LabelSix.text!)
    }
    }
    
    //Function to load the correct news site based on the label of the clicked button
    func labelChecker(Label: String){

        if(Label == arrayOfNews[0].title.localized()){
            
            //Seven Days Calls
            newsCount[0]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.sevenDays)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[1].title.localized()){
            
            //Burlington Free Press Calls
            newsCount[1]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.burlingtonFreePress)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[2].title.localized()){
            
            //WCAX Calls
            newsCount[2]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.WCAX)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[3].title.localized()){
            
            //My Champlain Valley Calls
            newsCount[3]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.myChamplainValley)! as URL)
            self.present(svc, animated: true, completion: nil)
            
        }
        
        if(Label == arrayOfNews[4].title.localized()){
            
            //News10 Calls
            newsCount[4]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.news10)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[5].title.localized()){
            
            //VPR Calls
            newsCount[5]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.VPR)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[6].title.localized()){
            
            //CNN Calls
            newsCount[6]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.CNN)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[7].title.localized()){
            
            //Aljazeera Calls
            newsCount[7]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.aljazeera)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[8].title.localized()){
            
            //ABC Calls
            newsCount[8]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.ABC)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[9].title.localized()){
            
            //Wall Street Journal Calls
            newsCount[9]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.wallStreetJournal)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[10].title.localized()){
            
            //NPR Calls
            newsCount[10]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.NPR)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[11].title.localized()){
            
            //Reuters Calls
            newsCount[11]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.reuters)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[12].title.localized()){
            
            //The Associated Press Calls
            newsCount[12]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.theAssociatedPress)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[13].title.localized()){
            
            //Huffington Post Calls
            newsCount[13]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.huffingtonPost)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[14].title.localized()){
            
            //BBC Calls
            newsCount[14]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.BBC)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[15].title.localized()){
            
            //Washington Post Calls
            newsCount[15]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.washingtonPost)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
        
        if(Label == arrayOfNews[16].title.localized()){
            
            //The Guardian Calls
            newsCount[16]  += 1
            
            UserDefaults.standard.set(newsCount,forKey: "newsCount")
            
            let svc = SFSafariViewController(url: NSURL(string: self.theGuardian)! as URL)
            self.present(svc, animated: true, completion: nil)
        }
    }

    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Logout button is hidden by default
        LogoutButton.isHidden = true
        
        //If apps and help are disabled
        if UserDefaults.standard.bool(forKey: "disableApps") && UserDefaults.standard.bool(forKey: "disableHelp") {
            
            //Hide the home button
            HomeButton.isHidden = true
            
            //If PIN is not disabled
            if !UserDefaults.standard.bool(forKey: "disablePIN"){
                
                //Logout button should be visable
                LogoutButton.isHidden = false
            }
        }
        
        //Call refresh to update the page with the correct news sites and titles
        refresh(refreshButton)
        
        //Round the news buttons/images
        NewsOne.layer.borderWidth = 1
        NewsTwo.layer.borderWidth = 1
        NewsThree.layer.borderWidth = 1
        NewsFour.layer.borderWidth = 1
        NewsFive.layer.borderWidth = 1
        NewsSix.layer.borderWidth = 1
        
        //Set the news labels to adapt to increased text length in different languages
        NewsOne.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsTwo.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsThree.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsFour.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsFive.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsSix.titleLabel?.adjustsFontSizeToFitWidth = true
        
        //Set the segmented controller to the correct segment
        SegmentedController.selectedSegmentIndex = 0
        
        //Shadow for the header image
        Header.layer.masksToBounds = true
        Header.layer.shadowRadius = 10
        Header.layer.shadowColor = UIColor.darkGray.cgColor
        Header.layer.shadowOffset = CGSize(width: 5, height: 15)
        Header.layer.shadowOpacity = 1
        
        //Page header adapting to different localized languages
        NewsLabel?.adjustsFontSizeToFitWidth = true;
        NewsLabel?.text = "News".localized()
        
        //Add the time entered entry to the current roadmap that was previously loaded from the user defaults
        RoadMap.append("Entered News Screen at: \(timeEntered)")
        }
    
    //Connected to all the buttons that cause a new view in the stack to be loaded
    @IBAction func LeavingNews(_ sender: Any) {
        
        //Calculate the time spent on the news page using the previous time entered date object
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add the new data to the Roadmap
        RoadMap.append("Exited News Screen after: \(timeSpent) seconds")
        
        //Save the updated roadmap back to the user defaults
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
    }
    }
