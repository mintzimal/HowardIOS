
import UIKit

class checkList: UIViewController, UITableViewDataSource {
    
//    @IBOutlet weak var tblList: UITableView!
    
    @IBOutlet weak var tableList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableList.layer.cornerRadius = 15
        // Do any additional setup after loading the view, typically from a nib.
        tableList.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckBoxCell")
        
        let items = ["FaceBook", "YouTube" , "Calender"]
        if let lbl = cell?.contentView.viewWithTag(1) as? UILabel {
            for item in items{
                lbl.text = item
            }}
        
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

