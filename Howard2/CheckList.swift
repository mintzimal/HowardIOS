
import UIKit

class checkList: UIViewController,UITableViewDataSource {
    
    
    
    
    
    //    @IBOutlet weak var tblList: UITableView!
    @IBOutlet weak var g: UITableViewCell!
    
    @IBOutlet weak var tableList: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableList.layer.cornerRadius = 15
        // Do any additional setup after loading the view, typically from a nib.
     tableList.dataSource = self
    }
    
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> (UITableViewCell) {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CheckBoxCell1")
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "CheckBoxCell2")

            let cell3 = tableView.dequeueReusableCell(withIdentifier: "CheckBoxCell3")

    
            if let lbl = cell?.contentView.viewWithTag(1) as? UILabel {
                
                    lbl.text = "FaceBook"
                }
            if let lbl2 = cell2?.contentView.viewWithTag(5) as? UILabel {
                
                lbl2.text = "YouTube"
            }
            if let lbl3 = cell3?.contentView.viewWithTag(4) as? UILabel {
                
                lbl3.text = "Calender"
            }
    
            if let btnChk = cell?.contentView.viewWithTag(2) as? UIButton {
                btnChk.addTarget(self, action: #selector(checkboxClicked(_ :)), for: .touchUpInside)
            }
            return cell!
            
        }
    
    
        @objc func checkboxClicked(_ sender: UIButton) {
            sender.isSelected = !sender.isSelected
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
}

