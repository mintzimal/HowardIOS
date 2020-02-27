//
//  Xylophone.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 5/19/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by Xylophone.swift
import UIKit
import AVFoundation

//Class definition and inheritance
class Xylophone: UIViewController{
    
    //Creates an AV object which ultimately plays the xylophone notes
    var audioPlayer: AVAudioPlayer!

    //On the initial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Connects to all of the notes displayed on the xylophone storyboard
    @IBAction func notePressed(_ sender: UIButton) {
        
        //Calls the custom playSound function on each note press
        playSound(soundTag: sender.tag)
        
    }
    
    //Custom function to play the correct notes
    func playSound(soundTag: Int){
        
        //Checks the number of the button that was pressed (1-7)
        let noteInt = String(soundTag)
        
        //Creates a reference to the correct file by generating a string name for the file ex: note1.wav
        let noteStr = "note"+noteInt
        let soundURL = Bundle.main.url(forResource: noteStr, withExtension: "wav")
        
        //Attempts to load the sound
        do{ audioPlayer = try AVAudioPlayer(contentsOf: soundURL!) }
        
        //Prints the error if there is a problem playing the audio through the pre-created AV player
        catch{ print(error) }
        
        //If the sound loaded correctly and no error was received play the pre-loaded sound file
        audioPlayer.play()
    }
    
    
}

