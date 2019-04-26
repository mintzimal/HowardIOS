//
//  AppsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/4/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import SafariServices

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
