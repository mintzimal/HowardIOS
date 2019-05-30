//
//  NewCheckListController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/23/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit

class NewsChecklistController: UITableViewController {
    
    var arrayOfNews : [appStruct] = []
    
    @IBOutlet var tableOutlet: UITableView!
    @IBOutlet weak var Home: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsMultipleSelection = true;
        
        guard let data = UserDefaults.standard.value(forKey:"NewsFiles") as? Data else { return }
        
        let arrayOfNews = try? PropertyListDecoder().decode(Array<appStruct>.self, from: data)

        self.arrayOfNews = arrayOfNews!

    }
    
    
        // MARK: - Table view data source
    @IBAction func getRows(_ sender: Any) {
        var values : [Int] = []
        var selected_indexPaths = tableOutlet!.indexPathsForSelectedRows
        
        if selected_indexPaths != nil {
            
            for value in selected_indexPaths!{
                values.append(value.row)
            }
            
            UserDefaults.standard.set(values, forKey: "NewsSelection")
            print("You selected:", values)
        }
    }
    
    
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayOfNews.count
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Click to Select Which News to Show (You may choose 6)"
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AppOne", for: indexPath)
            let apps = arrayOfNews[indexPath.row]
            cell.textLabel?.text = (arrayOfNews[indexPath.row] as appStruct).title;
            cell.detailTextLabel?.text = (arrayOfNews[indexPath.row] as! appStruct).text
            //var imageName = UIImage(named: arrayOfApps[indexPath.row].image)
            //cell.imageView?.image = arrayOfApps[indexPath.row].imageName
            //cell.imageView?.image = imageName
            cell.imageView?.image = UIImage(named: ((apps as! appStruct).image))
            
            let bgColorView = UIView()
            bgColorView.backgroundColor = .green
            cell.selectedBackgroundView = bgColorView
            //NSArray *selectedCells = [self.tableView indexPathsForSelectedRows]

            
            return cell
        }
    
        
}
