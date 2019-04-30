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
    var image : String
    
}

class NewCheckListController: UITableViewController {
    
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
    
    @IBOutlet var tableOutlet: UITableView!
    @IBOutlet weak var Home: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsMultipleSelection = true;

    }
    
    
        // MARK: - Table view data source
    
    @IBAction func getRows(_ sender: Any) {
        
        var values : [Int] = []
        var selected_indexPaths = tableOutlet!.indexPathsForSelectedRows
        
        for value in selected_indexPaths!{
            values.append(value.row)
        }
        
        print(values)
        
    }
    
    
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
            let apps = arrayOfApps[indexPath.row]
            cell.textLabel?.text = arrayOfApps[indexPath.row].title;
            cell.detailTextLabel?.text = arrayOfApps[indexPath.row].text
            //var imageName = UIImage(named: arrayOfApps[indexPath.row].image)
            //cell.imageView?.image = arrayOfApps[indexPath.row].imageName
            //cell.imageView?.image = imageName
            cell.imageView?.image = UIImage(named: apps.image)
            
            let bgColorView = UIView()
            bgColorView.backgroundColor = .green
            cell.selectedBackgroundView = bgColorView
            //NSArray *selectedCells = [self.tableView indexPathsForSelectedRows]

            
            return cell
        }
    
        
}
