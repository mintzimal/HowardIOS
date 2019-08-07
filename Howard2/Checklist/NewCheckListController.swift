//
//  NewCheckListController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/23/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

class NewCheckListController: UITableViewController {
    
    var arrayOfApps : [appStruct] = []
    
    @IBOutlet var tableOutlet: UITableView!
    @IBOutlet weak var Home: UIButton!
    
    var RoadMap:Array<String> = UserDefaults.standard.stringArray(forKey: "RoadMap") ?? Array()
    
    var timeEntered:Date = Date()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsMultipleSelection = true;
        
        guard let data = UserDefaults.standard.value(forKey:"AppFiles") as? Data else { return }
        
        let arrayOfApps = try? PropertyListDecoder().decode(Array<appStruct>.self, from: data)

        self.arrayOfApps = arrayOfApps!
        
        RoadMap.append("Entered Checklist at: \(timeEntered)")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if(UserDefaults.standard.integer(forKey: "AppChecklist") == 0){
        let alertController = UIAlertController(title: "Just a heads up", message:
            "Press the back button at the top or scroll down to the bottom and press the banner to exit this page.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
            
            UserDefaults.standard.set(1, forKey: "AppChecklist")
        }
        
    }
    
    
        // MARK: - Table view data source
    
    @IBAction func getRows(_ sender: Any) {
        
        var timeSpent = Date().timeIntervalSince(timeEntered)
        RoadMap.append("Exited Checklist after: \(timeSpent) seconds")
        
        UserDefaults.standard.set(RoadMap,forKey: "RoadMap")
        
        var values : [Int] = []
        var selected_indexPaths = tableOutlet!.indexPathsForSelectedRows
        
        if selected_indexPaths != nil {
        
        for value in selected_indexPaths!{
            values.append(value.row)
        }
        
        UserDefaults.standard.set(values, forKey: "AppSelection")
        print("You selected:", values)
        }
        
    }
    
    
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayOfApps.count
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "You May Choose 6".localized()
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AppOne", for: indexPath)
            let apps = arrayOfApps[indexPath.row]
            cell.textLabel?.text = (arrayOfApps[indexPath.row] as appStruct).title.localized();
            cell.detailTextLabel?.text = (arrayOfApps[indexPath.row] ).text.localized()
            //var imageName = UIImage(named: arrayOfApps[indexPath.row].image)
            //cell.imageView?.image = arrayOfApps[indexPath.row].imageName
            //cell.imageView?.image = imageName
            cell.imageView?.image = UIImage(named: ((apps ).image))
            
            let bgColorView = UIView()
            bgColorView.backgroundColor = .green
            cell.selectedBackgroundView = bgColorView
            //NSArray *selectedCells = [self.tableView indexPathsForSelectedRows]

            
            return cell
        }
    
        
}
