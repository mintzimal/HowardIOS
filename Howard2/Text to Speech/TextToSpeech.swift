//
//  ViewController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 7/9/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import AVFoundation

class TextToSpeech: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var SpeakerButton: UIButton!
    @IBOutlet weak var TextInput: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SpeakerButton.layer.borderWidth = 6.0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func vocalize(_ sender: Any) {
        
        let utterance = AVSpeechUtterance(string: TextInput.text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let alertController = UIAlertController(title: "Just a heads up", message:
            "If you would like to finish typing and send your message press outside the text field and press the audio icon.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
        
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
