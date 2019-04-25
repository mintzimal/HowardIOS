//
//  NewCheckListController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/23/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

struct appStruct {
    
    var id : Int
    var title : String
    var text : String
    
}

class NewCheckListController: UITableViewController {
    
    var arrayOfApps = [
        appStruct(id: 1, title: "Medication Manager", text: "Helpful daily reminders"),
        appStruct(id: 2, title: "Google Calender", text: "So everything is in one place"),
        appStruct(id: 3, title: "Learn Something New", text: "New Tricks for Everyone"),
        appStruct(id: 4, title: "Youtube", text: "Watch YouTube right from this app!")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsMultipleSelection = true;

    }
        // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayOfApps.count
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Click to Select Which Apps to Show"
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AppOne", for: indexPath)
            
            cell.textLabel?.text = arrayOfApps[indexPath.row].title;
            cell.detailTextLabel?.text = arrayOfApps[indexPath.row].text
            
            let bgColorView = UIView()
            bgColorView.backgroundColor = .green
            cell.selectedBackgroundView = bgColorView
            
            return cell
        }
        
}
