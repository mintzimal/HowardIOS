//
//  NewCheckListController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/23/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by NewChecklistController.swift
import UIKit

//Class definition and inheritance
class NewsChecklistController: UITableViewController {
    
    //Create an empty array of structs to store the news site options
    var arrayOfNews : [appStruct] = []
    
    //Outlet for the home button and table to be filled with site options
    @IBOutlet var tableOutlet: UITableView!
    @IBOutlet weak var Home: UIButton!
    
    //Load in the current roadmap from user defaults storage
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    //Create a new date object for use with the roadmap
    var timeEntered:Date = Date()
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the table to allow multiple rows to be selected at once
        self.tableView.allowsMultipleSelection = true;
        
        //Data for the table populatted by the news site date transfered from the news controller through the user defaults
        guard let data = UserDefaults.standard.value(forKey:"NewsFiles") as? Data else { return }
        
        //Decode the encoded data loaded from user defaults
        let arrayOfNews = try? PropertyListDecoder().decode(Array<appStruct>.self, from: data)

        //Set the global array of news to the one we just decoded from user defaults data
        self.arrayOfNews = arrayOfNews!
        
        //Append the entrance time to the roadmap
        RoadMap.append("Entered Checklist at: \(timeEntered)")
    }
    
    //On the initial view controller load, when the view first appears
    override func viewDidAppear(_ animated: Bool) {
        
        //If the news checklist has not been entered before
        if(UserDefaults.standard.integer(forKey: "NewsChecklist") == 0){
        
            //Create an alert for the user explaining how the checklist functions
            let alertController = UIAlertController(title: "Just a heads up", message:
            "Press the back button at the top or scroll down to the bottom and press the banner to exit this page.", preferredStyle: .alert)
        
        //Add a dismiss button to the alert controller
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        //Present the alert to the user
        self.present(alertController, animated: true, completion: nil)
        
        //Toggle the flag for the news checklist in the user default storage so that the user does not get presented the alert next time they load into the checklist
        UserDefaults.standard.set(1,forKey: "NewsChecklist")
        }
    }
    
    //Determine which rows the user selected when the user leaves the page
    @IBAction func getRows(_ sender: Any) {
        
        //Calculate the time spent on the checklist for use with the roadmap
        let timeSpent = Date().timeIntervalSince(timeEntered)
        
        //Add the time spent entry to the roadmap
        RoadMap.append("Exited Checklist after: \(timeSpent) seconds")
        
        //Save the updated roadmap to the user defaults storage
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")

        //Emtpy array for news numbers
        var values : [Int] = []
        
        //Get the paths to each table section
        let selected_indexPaths = tableOutlet!.indexPathsForSelectedRows
        
        //If there are paths to go tthrough
        if selected_indexPaths != nil {
            
            //For each of the paths add the row to the value array
            for value in selected_indexPaths!{
                values.append(value.row)
            }
            
            //Add the row values to the user defaults storage
            UserDefaults.standard.set(values, forKey: "NewsSelection")
        }
    }
    
        //Number of table sections defined
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        //Number of rows per section defined
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayOfNews.count
        }
        
        //Table header defined
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "You May Choose 6".localized()
        }
        
        //Row cell structure defined
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "AppOne", for: indexPath)
            
            let apps = arrayOfNews[indexPath.row]
            
            cell.textLabel?.text = (arrayOfNews[indexPath.row] as appStruct).title.localized();
            
            cell.detailTextLabel?.text = (arrayOfNews[indexPath.row] ).text.localized()
            
            cell.imageView?.image = UIImage(named: ((apps ).image))
            
            let bgColorView = UIView()
            bgColorView.backgroundColor = .green
            
            cell.selectedBackgroundView = bgColorView
            
            return cell
        }
    
        
}
