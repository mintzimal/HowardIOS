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
class NewCheckListController: UITableViewController {
    
    //Create an empty array to fill with app structs
    var arrayOfApps : [appStruct] = []
    
    //Outlet for the table itself
    @IBOutlet var tableOutlet: UITableView!
    
    //Outlet for the home button
    @IBOutlet weak var Home: UIButton!
    
    //Loads in the roadmap object from user defaults
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    //Create a date object for use with the roadmap
    var timeEntered:Date = Date()
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Allows multiple table options to be selected
        self.tableView.allowsMultipleSelection = true;
        
        //Loads in the app options from the user defaults
        guard let data = UserDefaults.standard.value(forKey:"AppFiles") as? Data else { return }
        
        //Decode the user default app data to a useable array
        let arrayOfApps = try? PropertyListDecoder().decode(Array<appStruct>.self, from: data)
        
        //Sets the array as a global variable for later use
        self.arrayOfApps = arrayOfApps!
        
        //Append a first loaded note to the roadmap
        RoadMap.append("Entered Checklist at: \(timeEntered)")

    }
    
    //On the initial view controller load, after the view controller is initially displayed
    override func viewDidAppear(_ animated: Bool) {
        
        //IF the user hasn't been to the checklist before
        if(UserDefaults.standard.integer(forKey: "AppChecklist") == 0){
        
        //Create an alert for the user explaining how the checklist functions
        let alertController = UIAlertController(title: "Just a heads up", message:
            "Press the back button at the top or scroll down to the bottom and press the banner to exit this page.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        //Present the alert to the user
        self.present(alertController, animated: true, completion: nil)
            
            //Updates that the user has received the alert about how the checklist functions
            UserDefaults.standard.set(1, forKey: "AppChecklist")
        }
    }
    
    //Get the selected rows from the checklist
    @IBAction func getRows(_ sender: Any) {
        
        //Calculates the amount of time spent on the checklist and add it to the roadmap
        let timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited Checklist after: \(timeSpent) seconds")
        
        //Append a new entry to the roadmap
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        //Empty array to store selected apps
        var values : [Int] = []
        
        //Check the number of which rows are selected
        let selected_indexPaths = tableOutlet!.indexPathsForSelectedRows
        
        //If there are any selected rows
        if selected_indexPaths != nil {
        
        //For each selected row number, add the value of that row to the values array (names of apps)
        for value in selected_indexPaths!{
            values.append(value.row)
        }
        
        //Send the selected app names to the user defaults
        UserDefaults.standard.set(values, forKey: "AppSelection")
        
        //Print the selected apps to the console
        print("You selected:", values)
        }
    }
    
        //Set the number of table sections (1)
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        //Set the number of rows per section (max)
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayOfApps.count
        }
        
        //Set the header of the table
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "You May Choose 6".localized()
        }
        
        //Called for each cell of the table
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            //Populate a table cell with an item from the list of app structs - name, description, image
            let cell = tableView.dequeueReusableCell(withIdentifier: "AppOne", for: indexPath)
            let apps = arrayOfApps[indexPath.row]
            cell.textLabel?.text = (arrayOfApps[indexPath.row] as appStruct).title.localized();
            cell.detailTextLabel?.text = (arrayOfApps[indexPath.row] ).text.localized()
            cell.imageView?.image = UIImage(named: ((apps ).image))
            
            //Set the selected app color to green
            let bgColorView = UIView()
            bgColorView.backgroundColor = .green
            cell.selectedBackgroundView = bgColorView
            
            //Return the created cell
            return cell
        }
    
        
}
