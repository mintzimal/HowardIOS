//
//  AppsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import SafariServices

class DynamicNewsController: UIViewController, SFSafariViewControllerDelegate {
    
    @IBOutlet weak var LogoutButton: UIButton!
    @IBOutlet weak var HomeButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    
    @IBOutlet weak var NewsOne: UIButton!
    @IBOutlet weak var NewsTwo: UIButton!
    @IBOutlet weak var NewsThree: UIButton!
    @IBOutlet weak var NewsFour: UIButton!
    @IBOutlet weak var NewsFive: UIButton!
    @IBOutlet weak var NewsSix: UIButton!
    
    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var LabelTwo: UILabel!
    @IBOutlet weak var LabelThree: UILabel!
    @IBOutlet weak var LabelFour: UILabel!
    @IBOutlet weak var LabelFive: UILabel!
    @IBOutlet weak var LabelSix: UILabel!
    
    @IBOutlet weak var NewsLabel: UILabel!
    
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    var timeEntered:Date = Date()
    
    var newsCount:[Int] = UserDefaults.standard.array(forKey: "newsCount") as? [Int] ?? [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
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
    
    
    
    @IBAction func refresh(_ sender: Any) {
        let selectedApps:[Int] = UserDefaults.standard.array(forKey: "NewsSelection") as? [Int] ?? [1,2,3,4,5,6]
        
        print("You Loaded:" , selectedApps)
        
        UserDefaults.standard.set(try? PropertyListEncoder().encode(arrayOfNews), forKey:"NewsFiles")
        
        if selectedApps.count >= 1 {
            LabelOne.text = arrayOfNews[selectedApps[0]].title.localized()
            NewsOne.setImage(UIImage(named: arrayOfNews[selectedApps[0]].image), for: .normal)
        }
        if selectedApps.count >= 2 {
            LabelTwo.text = arrayOfNews[selectedApps[1]].title.localized()
            NewsTwo.setImage(UIImage(named: arrayOfNews[selectedApps[1]].image), for: .normal)
        }
        if selectedApps.count >= 3 {
            LabelThree.text = arrayOfNews[selectedApps[2]].title.localized()
            NewsThree.setImage(UIImage(named: arrayOfNews[selectedApps[2]].image), for: .normal)
        }
        if selectedApps.count >= 4 {
            LabelFour.text = arrayOfNews[selectedApps[3]].title.localized()
            NewsFour.setImage(UIImage(named: arrayOfNews[selectedApps[3]].image), for: .normal)
        }
        if selectedApps.count >= 5 {
            LabelFive.text = arrayOfNews[selectedApps[4]].title.localized()
            NewsFive.setImage(UIImage(named: arrayOfNews[selectedApps[4]].image), for: .normal)
        }
        if selectedApps.count >= 6 {
            LabelSix.text = arrayOfNews[selectedApps[5]].title.localized()
            NewsSix.setImage(UIImage(named: arrayOfNews[selectedApps[5]].image), for: .normal)
    }
    }

    
    @IBAction func ButtonSorter(sender: UIButton) {
        
    if sender == NewsOne {
        
        print("News1")
        labelChecker(Label: LabelOne.text!)
    
    } else if sender == NewsTwo {
        
        print("News2")
        labelChecker(Label: LabelTwo.text!)
    
    } else if sender == NewsThree {
        
        print("News3")
        labelChecker(Label: LabelThree.text!)
    
    } else if sender == NewsFour {
        
        print("News4")
        labelChecker(Label: LabelFour.text!)
        
    } else if sender == NewsFive {
        
        print("News5")
        labelChecker(Label: LabelFive.text!)
        
    } else if sender == NewsSix {
        
        print("News6")
        labelChecker(Label: LabelSix.text!)
        
    }
    }
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LogoutButton.isHidden = true
        
        if UserDefaults.standard.bool(forKey: "disableApps") && UserDefaults.standard.bool(forKey: "disableHelp") {
            
            HomeButton.isHidden = true
            
            if !UserDefaults.standard.bool(forKey: "disablePIN"){
                
                LogoutButton.isHidden = false
            }
            
        }
        
        
        refresh(refreshButton)
        
        NewsOne.layer.borderWidth = 3
        NewsTwo.layer.borderWidth = 3
        NewsThree.layer.borderWidth = 3
        NewsFour.layer.borderWidth = 3
        NewsFive.layer.borderWidth = 3
        NewsSix.layer.borderWidth = 3
        
        NewsOne.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsTwo.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsThree.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsFour.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsFive.titleLabel?.adjustsFontSizeToFitWidth = true
        NewsSix.titleLabel?.adjustsFontSizeToFitWidth = true
        
        NewsLabel.adjustsFontSizeToFitWidth = true;
        NewsLabel.text = "News".localized()
        
        RoadMap.append("Entered News Screen at: \(timeEntered)")
        }
    
    @IBAction func LeavingNews(_ sender: Any) {
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited News Screen after: \(timeSpent) seconds")
        
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
