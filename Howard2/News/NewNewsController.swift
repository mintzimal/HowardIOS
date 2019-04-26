//
//  NewNewsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/25/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import SafariServices

class NewNewsController: UIViewController, SFSafariViewControllerDelegate {
    
    private var sevenDays:String = "https://www.sevendaysvt.com/"
    private var burlingtonFreePress:String = "https://www.burlingtonfreepress.com/"
    private var WCAX:String = "https://www.wcax.com/"
    private var myChamplainValley = "https://www.mychamplainvalley.com/news"
    private var news10 = "https://www.news10.com/news/vt-news"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var News1: UIButton!
    @IBOutlet weak var News2: UIButton!
    @IBOutlet weak var News4: UIButton!
    @IBOutlet weak var News5: UIButton!
    
    @IBAction func sevenDays(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: self.sevenDays)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func burlingtonFreePress(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: self.burlingtonFreePress)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
//    @IBAction func WCAX(_ sender: Any) {
//        let svc = SFSafariViewController(url: NSURL(string: self.WCAX)! as URL)
//        self.present(svc, animated: true, completion: nil)
//    }
    
    @IBAction func myChamplainValley(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: self.myChamplainValley)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func news10(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: self.news10)! as URL)
        self.present(svc, animated: true, completion: nil)
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
