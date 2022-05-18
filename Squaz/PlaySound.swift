//
//  PlaySound.swift
//  Squaz
//
//  Created by macbook on 18/05/2022.
//

import Foundation
import AVFoundation


//MARK:- AUDIO PLAYER

var audioPlayer : AVAudioPlayer?

func playSound(Sound: String, Type : String){
    
    if let path = Bundle.main.path(forResource: Sound, ofType: Type){
       
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        audioPlayer?.play()
        }catch{
            
            print("Couldnt find the play sound ")
            
        }
        
        
        
    }
    
  
    
}

