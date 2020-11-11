//
//  TextToSpeech.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 7/9/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Libraries used by TextToSpeech.swift
import UIKit
import AVFoundation

//Class definition and Inheritance
class TextToSpeech: UIViewController, UITextViewDelegate {
    
    //Objects on the Storyboard
    @IBOutlet weak var SpeakerButton: UIButton!
    @IBOutlet weak var TextInput: UITextView!
    var accessoryDoneButton: UIBarButtonItem!
    let accessoryToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44))
    
    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round the corners of the speaker button
        SpeakerButton.layer.borderWidth = 3.0
        
        
        self.accessoryDoneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.donePressed))
        self.accessoryToolBar.items = [self.accessoryDoneButton]
        self.TextInput.inputAccessoryView = self.accessoryToolBar

        // Do any additional setup after loading the view.
    }
    
    @objc func donePressed() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    //Connects to the SpeakerButton such that on click this function is activated
    @IBAction func vocalize(_ sender: Any) {
        
        //Takes the input from the text field and converts it to an AV form
        let utterance = AVSpeechUtterance(string: TextInput.text)
        
        //Generates a voice, english with a US accent is the defaults
        //TODO: Give the user the choice of what base language/accent/gender they want to use for TTS
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        //Create a speech engine object
        let synthesizer = AVSpeechSynthesizer()
        
        //Output the generated AV object (utterance) to the devices default speakers
        synthesizer.speak(utterance)
        
    }
    
    //Minimizes the text field when user clickes outside of the text box. Without this override the keyboard will be non-minimizable
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    //Activates when the view is originally shown to the user
    override func viewDidAppear(_ animated: Bool) {
        
        //Creates a notification for the user explaining the function of the page, and how to escape the keyboard
        let alertController = UIAlertController(title: "Just a heads up", message:
            "If you would like to finish typing and send your message press outside the text field and press the audio icon.", preferredStyle: .alert)
        
        //Adds a dismiss button to the notification
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        //Creates a pop up alert displayed to the user with the information displayed above.
        self.present(alertController, animated: true, completion: nil)
        
    }
}
