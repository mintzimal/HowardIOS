//
//  checkinsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 8/14/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import UserNotifications

class checkinsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var setReminders: UIButton!

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var nextOne: UIButton!
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    
    
    @IBOutlet weak var dayTable: UITableView!
    
    
    @IBOutlet weak var nextTwo: UIButton!
    
    
    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBOutlet weak var nextThree: UIButton!
    
    @IBOutlet weak var numberCheckup: UILabel!
    
    @IBOutlet weak var dayCheckup: UILabel!
    
    @IBOutlet weak var timeCheckup: UILabel!
    
    @IBOutlet weak var confirm: UIButton!
    
    @IBOutlet weak var redo: UIButton!
    
    var pickerData: [String] = [String]()
    
    var label:String = ""
    
    var days = ["Sunday","Monday", "Tuesday", "Wednesday","Thursday","Friday","Saturday"]
    
    var selectedDays:[Int] = []
    
    var savedDate = Date()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setReminders?.layer.cornerRadius = 15
        
        numberLabel?.layer.cornerRadius = 15
        nextOne?.layer.cornerRadius = 15
        
        Button1?.layer.cornerRadius = 15
        Button2?.layer.cornerRadius = 15
        Button3?.layer.cornerRadius = 15
        Button4?.layer.cornerRadius = 15
        Button5?.layer.cornerRadius = 15
        Button6?.layer.cornerRadius = 15
        Button7?.layer.cornerRadius = 15
        Button8?.layer.cornerRadius = 15
        Button9?.layer.cornerRadius = 15
        
        nextTwo?.layer.cornerRadius = 15
 
        nextThree?.layer.cornerRadius = 15
        
        confirm?.layer.cornerRadius = 15
        redo?.layer.cornerRadius = 15
        
        dayTable?.allowsMultipleSelection = true
        dayTable?.delegate = self
        dayTable?.dataSource = self
        
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        var newNumberLabel:String = [numberCheckup?.text, UserDefaults.standard.string(forKey: "reminderNumbers") ].compactMap({$0}).joined(separator:" ")
        
        numberCheckup?.text = newNumberLabel
        
        var newDayLabel:String = [dayCheckup?.text, UserDefaults.standard.string(forKey: "dayValues") ].compactMap({$0}).joined(separator:" ")
        
            dayCheckup?.text = newDayLabel
        
        var newTimeLabel:String = [timeCheckup?.text, UserDefaults.standard.string(forKey: "timeValues") ].compactMap({$0}).joined(separator:" ")
        
        timeCheckup?.text = newTimeLabel

        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberButtonPress(_ sender: Any) {
        
        self.label = (sender as! UIButton).titleLabel!.text!
        
        numberLabel.text = ((numberLabel?.text ?? "")+self.label)
        
    }
    
    @IBAction func saveNumbers(_ sender: Any) {
        UserDefaults.standard.set(numberLabel.text, forKey: "reminderNumbers")
    }
    
    @IBAction func getDays(_ sender: Any) {
        var values : [Int] = []
        var dayValues:String = ""
        
        if((dayTable.indexPathsForSelectedRows) != nil){
        
            var selected_indexPaths = dayTable!.indexPathsForSelectedRows!
        
            for index in selected_indexPaths{
            values.append(index.row)
            }
        
            
        
            for value in values{
                let index = days[value].index(days[value].startIndex, offsetBy: 2)
                
                dayValues = dayValues + "," + String(days[value][..<index])
                
                selectedDays.append(value+1)
                
            }
            
            UserDefaults.standard.set(selectedDays, forKey: "selectedDays")
            dayValues = String(dayValues.dropFirst())
        
            }
        
        UserDefaults.standard.set(dayValues,forKey: "dayValues")
    }
    
    @IBAction func getTime(_ sender: Any) {
        
        savedDate = self.timePicker.date
        let strTime = savedDate.dateStringWith(strFormat: "hh:mm a")
        
        UserDefaults.standard.set(savedDate, forKey: "savedDate")
        UserDefaults.standard.set(strTime, forKey: "timeValues")
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        
        cell.textLabel?.text = self.days[indexPath.row]
        
        let bgColorView = UIView()
        bgColorView.backgroundColor = .green
        cell.selectedBackgroundView = bgColorView
        
        return cell
    }
    
    @IBAction func confirmReminders(_ sender: Any) {
        let center = UNUserNotificationCenter.current()
        let options: UNAuthorizationOptions = [.alert, .sound];
        
        center.getNotificationSettings { (settings) in
            if settings.authorizationStatus != .authorized {
                // Notifications not allowed
                center.requestAuthorization(options: options) {
                    (granted, error) in
                    if !granted {
                        print("Something went wrong")
                    }
                }
            }
        }
        
        center.removeAllPendingNotificationRequests()
        
        let content = UNMutableNotificationContent()
        content.title = "Check-In Reminder"
        content.body = "You have a Check-In coming up."
        content.sound = UNNotificationSound.default
        
        var dateComponents = DateComponents()
        dateComponents.year = 2019
        dateComponents.month = 8
        dateComponents.day = 22
        dateComponents.timeZone = TimeZone(abbreviation: "EST")
        
        dateComponents.hour = Calendar.current.component(.hour, from: UserDefaults.standard.object(forKey: "savedDate") as! Date)
        
        dateComponents.minute = Calendar.current.component(.minute, from: UserDefaults.standard.object(forKey: "savedDate") as! Date)
        
        dateComponents.second = 0
        
        for day in UserDefaults.standard.array(forKey: "selectedDays")!{
            
            let numDay = day as! Int
            
            dateComponents.weekday = numDay
            
            // Create date from components
            let userCalendar = Calendar.current // user calendar
            let date = userCalendar.date(from: dateComponents)!
            
            let triggerWeekly = Calendar.current.dateComponents([.weekday,.hour,.minute,.second,], from: date)
            let trigger = UNCalendarNotificationTrigger(dateMatching: triggerWeekly, repeats: true)
            
            // Swift
            let identifier = self.days[numDay-1]
            
            let request = UNNotificationRequest(identifier: identifier,
                                            content: content, trigger: trigger)
            center.add(request, withCompletionHandler: { (error) in
                if let error = error {
                    // Something went wrong
                    print("Stuck")
                }
            })
        }
        
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

extension Date {
    func dateStringWith(strFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = Calendar.current.timeZone
        dateFormatter.locale = Calendar.current.locale
        dateFormatter.dateFormat = strFormat
        return dateFormatter.string(from: self)
}
    
}
