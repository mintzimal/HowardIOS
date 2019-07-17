//
//  ViewController.swift
//  Flash Chat
//
//

import UIKit
import AWSAppSync
import AWSMobileClient
import AWSCore
//import Firebase
//import ChameleonFramework

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    // Declare instance variables here
    
    //var flag = 20;
    var convoID = 100000;
    var num = 0;
    let caseManagerID = "us-east-1:dca9243a-a444-4ae4-878b-4c554f1ec735"
    let clientID = AWSMobileClient.sharedInstance().getIdentityId().result
    let nickName = "Client"
    var messages: [String] = [String]()
    
    
    var messageArray: [Message] = [Message]()
    
    // We've pre-linked the IBOutlets
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTextfield: UITextField!
    @IBOutlet var messageTableView: UITableView!
    
    
    
    var appSyncClient: AWSAppSyncClient?
    
    var timeEntered = Date()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        //TODO: Set yourself as the delegate and datasource here:
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        
        //TODO: Set yourself as the delegate of the text field here:
        messageTextfield.delegate = self
        
        
        //TODO: Set the tapGesture here:
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        messageTableView.addGestureRecognizer(tapGesture)
        
        
        
        //TODO: Register your MessageCell.xib file here:
        messageTableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        
        
        //Call to configure row height
        
        appSyncClient?.clearCache()
        
        self.subscribe()
        
        configureTableView()
        self.conversationInit()
       // self.retrieveMessages()
        
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            //self.configureTableView()
        }
        
        let timer2 = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            self.retrieveMessages()
        }
        
        messageTableView.separatorStyle = .none
        
        
        
        
    }
    
    ///////////////////////////////////////////
    
    //MARK: - TableView DataSource Methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //to Get the custom message layout get reusable cell at the location of the cell we are initalizing -- Specify Class of custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        cell.messageBody.text = messageArray[indexPath.row].messageBody
        cell.senderUsername.text = messageArray[indexPath.row].sender
        
        
        
        //potential fail point
        
        
        
        if cell.senderUsername.text == nickName  {
            // Messeges we sent ourselves
            cell.avatarImageView.backgroundColor = UIColor.blue
            cell.messageBackground.backgroundColor = UIColor.blue
            cell.messageBody.textColor = UIColor.white
            cell.avatarImageView.image = UIImage(named: "howardCenter.jpg")
        } else{
            cell.avatarImageView.backgroundColor = UIColor.gray
            cell.messageBackground.backgroundColor = UIColor.cyan
            cell.messageBody.textColor = UIColor.black
            cell.avatarImageView.image = UIImage(named: "client.png")
        }
        
        return cell
        
    }
    
    
    
    //TODO: Declare cellForRowAtIndexPath here:
    
    
    
    //TODO: Declare numberOfRowsInSection here:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    
    
    //TODO: Declare tableViewTapped here:
    @objc func tableViewTapped(){
        messageTextfield.endEditing(true)
    }
    
    
    
    //TODO: Declare configureTableView here:
    func configureTableView(){
        messageTableView.rowHeight = UITableView.automaticDimension
        messageTableView.estimatedRowHeight = 120
    }
    
    
    ///////////////////////////////////////////
    
    //MARK:- TextField Delegate Methods
    
    
    
    
    //TODO: Declare textFieldDidBeginEditing here:
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.heightConstraint.constant = 370
            self.view.layoutIfNeeded()
        })
    }
    
    
    
    
    //TODO: Declare textFieldDidEndEditing here:
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.5, animations: {
            self.heightConstraint.constant = 50
            self.view.layoutIfNeeded()
        })
    }
    
    
    ///////////////////////////////////////////
    
    
    //MARK: - Send & Recieve from Firebase
    
    
    
    
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        
        
        //TODO: Send the message to Firebase and save it in our database
        messageTextfield.endEditing(true)
        
        messageTextfield.isEnabled = false
        sendButton.isEnabled = false
        
        
        let content = self.messageTextfield.text!
        self.mutate(content: content)
        
        
        self.messageTextfield.isEnabled = true
        self.sendButton.isEnabled = true
        self.messageTextfield.text = ""
        self.messageTableView.reloadData()
        
        
    }
    
    
    
    func mutate(content: String) {
        
        appSyncClient?.clearCache()
        
        
        
            
            /*
             // Retrieve your Amazon Cognito ID
             credentialsProvider.getIdentityId().continueWith(block: { (task) -> AnyObject? in
             if (task.error != nil) {
             print("Error: " + task.error!.localizedDescription)
             }
             else {
             // the task result will contain the identity id
             let cognitoId = task.result!
             print("Cognito id: \(cognitoId)")
             }
             return task;
             })
             */
            
            
            // self.getMessageNum()
            
            
            
            let message = Message()
            
            message.messageBody = content
            message.sender = self.nickName
            
            self.messageArray.append(message)
            
            // self.configureTableView()
            self.messageTableView.reloadData()
            
            self.messages.append(content + "," + self.nickName)
            
            
            
        let mutationInput = UpdateConversationsMutation(input: UpdateConversationsInput(conversationId: self.convoID, caseManagerId: self.caseManagerID as GraphQLID, clientId: self.clientID as GraphQLID?, messages: self.json(from: self.messages)!,  nickname:  self.nickName, lastUpdate: "2019-05-05T02:50:50Z" as String))
            
            
          
            
            self.appSyncClient?.perform(mutation: mutationInput) { (result, error) in
                
                
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }
                if let resultError = result?.errors {
                    print("Error saving the item on server: \(resultError)")
                    return
                }
                
            }
            
        
        
    }

    //TODO: Create the retrieveMessages method here:
    func retrieveMessages(){
        
        
        
        self.messageArray.removeAll()
        self.messages.removeAll()
        appSyncClient?.clearCache()
        
        appSyncClient?.fetch(query: GetConversationsQuery(ConversationID: self.convoID)) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? " error fetching")
                return
            }
            
            
            
            let conversation = result?.data?.getConversations
   
            let messages: [String] = conversation!.messages.toJSON() as! [String]
                    
                    print(messages)
                   // var messages: [String]
                    
                    for object in messages{
                        
                        self.messages.append(object)
                        
                        
                        let input = object.components(separatedBy: ",")
                        
                        let message = Message()
                        
                        message.messageBody = String(input[0])
                        message.sender = input[1]
                        
                        
                        self.messageArray.append(message)
                        
                        
                    
                    
                
                
                
            }
            
            /*
            
            let flag = allMessages!.count
            
            var current = 0
            
            var cont = true
            
            while(cont){
                
                if (current == flag){
                    cont = false
                }
                
                for item in allMessages!{
                    
                    if (item!.messageNum == current){
                        
                        let message = Message()
                        
                        message.messageBody = item!.contents
                        message.sender = item!.nickname
                        
                        
                        self.messageArray.append(message)
                        
                        current = current + 1

                    }
                    
                    
                    
                }
                
                
            }
            
        
            */
           // print(self.messageArray)
            
            //self.messageArray.reverse()
            self.configureTableView()
            self.messageTableView.reloadData()
                
            
            //Reload messages
           // self.messageArray.reverse()
            //self.configureTableView()
            //self.messageTableView.reloadData()
            
        }
        
    }
    
    
    func subscribe(){
        
        /*
        
        var discard: Cancellable?
        
        func subscribe() {
            do {
                discard = try appSyncClient?.subscribe(subscription: OnCreateMessagesSubscription(), resultHandler: { (result, transaction, error) in
                    if let result = result {
                        
                        let message = Message()
                        
                        message.messageBody = result.data!.onCreateMessages!.contents
                        message.sender = result.data!.onCreateMessages!.nickname
                        
                        self.messageArray.append(message)
                        
                        
                        self.configureTableView()
                        self.messageTableView.reloadData()
                        
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                    
                    
                    
                    
                })
            } catch {
                print("Error starting subscription.")
            }
        }
 
 */
    }
 
    
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
        
         print( AWSMobileClient.sharedInstance().getIdentityId().result)
        
        self.appSyncClient?.clearCache()
        
        self.retrieveMessages()
        
    }
    
    func json(from object:Any) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
            return nil
        }
        return String(data: data, encoding: String.Encoding.utf8)
    }
    
    func conversationInit(){
        
        
        self.messageArray.removeAll()
        appSyncClient?.clearCache()
        
        appSyncClient?.fetch(query: ListConversationsQuery()) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? " error fetching")
                return
            }
            
            
            
            let allConversations = result?.data?.listConversations?.items
            
            
            if(allConversations != nil){
            for item in allConversations!{
                
                
                if (item?.clientId == AWSMobileClient.sharedInstance().getIdentityId().result as GraphQLID? && item?.caseManagerId == self.caseManagerID){
                   
                    self.convoID = item!.conversationId
                    
                    self.retrieveMessages()
                    
                    
                    return
                    
                    
                    }
                }
                
                
            }
        
            
            
            
          //  print(self.convoID)
            //print(self.caseManagerID)
            //print(self.clientID)
            //print(self.json(from: self.messages))
            //print(self.nickName)
            
            
            self.convoID = allConversations!.count
            
            let mutationInput = CreateConversationsMutation(input: CreateConversationsInput(conversationId: self.convoID, caseManagerId: self.caseManagerID as GraphQLID, clientId: self.clientID as! GraphQLID, messages: self.json(from: self.messages)!,  nickname:  self.nickName, lastUpdate: "2019-05-05T02:50:50Z" as String))
            
            
            
            
            
            
            self.appSyncClient?.perform(mutation: mutationInput) { (result, error) in
                
                
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }
                if let resultError = result?.errors {
                    print("Error saving the item on server: \(resultError)")
                    return
                }
                
            }
            
          
            //self.messageArray.reverse()
            self.configureTableView()
            self.messageTableView.reloadData()
            
            
            //Reload messages
            // self.messageArray.reverse()
            //self.configureTableView()
            //self.messageTableView.reloadData()
            
        }
        
    }
    
    
    
    
}

extension String {
    func toJSON() -> Any? {
        guard let data = self.data(using: .utf8, allowLossyConversion: false) else { return nil }
        return try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
    }
}
