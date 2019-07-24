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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
