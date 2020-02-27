//
//  checkinsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 8/14/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by Xylophone.swift
import UIKit
import UserNotifications

//Class definition and inheritance
class checkinsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Button to get started
    @IBOutlet weak var setReminders: UIButton!

    //First page buttons to set how many future reminders they want
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
    
    //Second page buttons to set wich days of the week the reminders should be on
    @IBOutlet weak var dayTable: UITableView!
    @IBOutlet weak var nextTwo: UIButton!
    
    //Third page buttons to set which time the reminders should be
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var nextThree: UIButton!
    
    //Fourth page for confirming time/day/and number of reminders
    @IBOutlet weak var numberCheckup: UILabel!
    @IBOutlet weak var dayCheckup: UILabel!
    @IBOutlet weak var timeCheckup: UILabel!
    @IBOutlet weak var confirm: UIButton!
    @IBOutlet weak var redo: UIButton!
    
    
    var pickerData: [String] = [String]()
    
    //The label on the first page that displays the number of reminders the user has punched in
    var label:String = ""
    
    //Days of the week to be populated into the table where the user selects the days of the week to be notified on
    var days = ["Sunday","Monday", "Tuesday", "Wednesday","Thursday","Friday","Saturday"]
    
    //Array to store the days of the week that the user punched in
    var selectedDays:[Int] = []
    
    //Date for use with apple push notification services
    var savedDate = Date()
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round all of the storyboard elements
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
        
        //Set the day table to allow multiple days to be selected
        dayTable?.allowsMultipleSelection = true
        dayTable?.delegate = self
        dayTable?.dataSource = self
        
        //Make a date formatter object and set the time standard, zone, and style
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        //Combine the current number checkup string with the integers that the user put in for number of future checkups
        let newNumberLabel:String = [numberCheckup?.text, UserDefaults.standard.string(forKey: "reminderNumbers") ].compactMap({$0}).joined(separator:" ")
        
        //Set the label of the first checkup text field to the new label we just created
        numberCheckup?.text = newNumberLabel
        
        //Combine the current day checkup string with the days that the user selected to be reminded on
        let newDayLabel:String = [dayCheckup?.text, UserDefaults.standard.string(forKey: "dayValues") ].compactMap({$0}).joined(separator:" ")
        
            //Set the label of the second checkup string with the new label we just created
            dayCheckup?.text = newDayLabel
        
        //Combine the current time checkup string with the time that the user selected to be reminded at
        let newTimeLabel:String = [timeCheckup?.text, UserDefaults.standard.string(forKey: "timeValues") ].compactMap({$0}).joined(separator:" ")
        
        //Set the label of the third checkup string with thhe new label we just created
        timeCheckup?.text = newTimeLabel
    }
    
    //Function connected to the buttons on the first page pertaining to the number of checkups selected
    @IBAction func numberButtonPress(_ sender: Any) {
        
        //Get the label of the button that was pressed
        self.label = (sender as! UIButton).titleLabel!.text!
        
        //Add the label of the button that was pressed to the current number label
        numberLabel.text = ((numberLabel?.text ?? "")+self.label)
    }
    
    //Function connected to the first 'next' button
    @IBAction func saveNumbers(_ sender: Any) {
        
        //Add the number of checkups selected to the user defaults storage
        UserDefaults.standard.set(numberLabel.text, forKey: "reminderNumbers")
    }
    
    //Get the days out of the table that were selected by the user
    @IBAction func getDays(_ sender: Any) {
        
        //Store the strings from the rows the user selected
        var dayValues:String = ""
        
        //Assuming the user has selected some rows
        if((dayTable.indexPathsForSelectedRows) != nil){
        
            //Get the selected rows in array form
            let selected_indexPaths = dayTable!.indexPathsForSelectedRows!
        
            //For each index object
            for entry in selected_indexPaths{
                
                //Get the integer value of the index's row
                let value:Int = entry.row
                
                //Get the day of the week that integer represents
                let index = days[value].index(days[value].startIndex, offsetBy: 2)
                
                //Make a string of all the selected days
                dayValues = dayValues + "," + String(days[value][..<index])
                
                //Add the selected index to an array of selected days
                selectedDays.append(value+1)
                
            }
            
            //Save the selected days to the user defaults storage
            UserDefaults.standard.set(selectedDays, forKey: "selectedDays")
            
            //String of all the days saved without the first ','
            dayValues = String(dayValues.dropFirst())
            }
        
        //Save the parsed day value string list
        UserDefaults.standard.set(dayValues,forKey: "dayValues")
    }
    
    //Get the time from the time picker wheel
    @IBAction func getTime(_ sender: Any) {
        
        //Load the current state of the time picker in as a date object
        savedDate = self.timePicker.date
        
        //Format the date object to just be Hour-Minute-AM/PM
        let strTime = savedDate.dateStringWith(strFormat: "hh:mm a")
        
        //Send the saved date to the user defaults storage
        UserDefaults.standard.set(savedDate, forKey: "savedDate")
        
        //Send the parsed time to the user defaults storage
        UserDefaults.standard.set(strTime, forKey: "timeValues")
    }
    
    //Number of sections in the day table
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //Number of rows per section in the day table (max)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    
    //Populate all of the cells in the table with a day in the day array
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        
        cell.textLabel?.text = self.days[indexPath.row]
        
        let bgColorView = UIView()
        bgColorView.backgroundColor = .green
        cell.selectedBackgroundView = bgColorView
        
        return cell
    }
    
    //Confirm that the reminders are correct, and schedule them with the push notifications service
    @IBAction func confirmReminders(_ sender: Any) {
        
        //Get the current notification center of the device
        let center = UNUserNotificationCenter.current()
        
        //Check the user options about whether notifications are generally allowed
        let options: UNAuthorizationOptions = [.alert, .sound];
        
        //Check the user options whether notifications are allowed for this app
        center.getNotificationSettings { (settings) in
            
            //If the app is not currently authorized to send notifications
            if settings.authorizationStatus != .authorized {
                
                // Notifications permissions request
                center.requestAuthorization(options: options) {
                    
                    //If granted proceed, if not print errror
                    (granted, error) in
                    if !granted {
                        print("Something went wrong")
                    }
                }
            }
        }
        
        //Remove all pending notification requests from the users notification center
        center.removeAllPendingNotificationRequests()
        
        //Create a new notification object
        let content = UNMutableNotificationContent()
        
        //Set the notification title, text, and sound
        content.title = "Check-In Reminder"
        content.body = "You have a Check-In coming up."
        content.sound = UNNotificationSound.default
        
        //Create a date components object and give it the current calendar
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        
        //Give the date components object the saved hour from the user defaults storage
        dateComponents.hour = Calendar.current.component(.hour, from: UserDefaults.standard.object(forKey: "savedDate") as! Date)
        
        //Give the date components object the saved minute from the user defaults storage
        dateComponents.minute = Calendar.current.component(.minute, from: UserDefaults.standard.object(forKey: "savedDate") as! Date)
        
        //Set the date components object second field to zero
        dateComponents.second = 0
        
        //For every day that the user has selected
        for day in UserDefaults.standard.array(forKey: "selectedDays")!{
            
            //Each day is saved as a specific int
            let numDay = day as! Int
            
            //Set the date components weekday to the integer we saved above
            dateComponents.weekday = numDay
            
            // Create date from components
            let userCalendar = Calendar.current
            _ = userCalendar.date(from: dateComponents)!
            
            //Set the notification center trigger
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            
            //Get the correct day from the global days array
            let identifier = self.days[numDay-1]
            
            //Prepare a request object from the prepared identifier, content, and trigger
            let request = UNNotificationRequest(identifier: identifier,
                                            content: content, trigger: trigger)
            
            //Add the notification to the users notification center
            center.add(request, withCompletionHandler: {
                
                //Ensure that there's no problem with the notication being scheduled
                (error) in
                if error != nil {
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
