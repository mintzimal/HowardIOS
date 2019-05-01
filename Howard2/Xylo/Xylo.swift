//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class Xylophone: UIViewController{
    

    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundTag: sender.tag)
    }
    func playSound(soundTag: Int){
        let noteInt = String(soundTag)
        let noteStr = "note"+noteInt
        
        let soundURL = Bundle.main.url(forResource: noteStr, withExtension: "wav")
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
        print(error)
        }
        audioPlayer.play()
    }
    
    
}

