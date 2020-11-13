//
//  ViewController.swift
//  Egg Timer
//
//  Created by Shubhangi Gupta on 11/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 8, "Hard" : 12]

    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        let result = eggTimes[hardness]!
        
        print(result)
        var timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)
        
        /*if hardness == "Soft" {
            print(softTime)
        }
        else if hardness == "Medium"{
            print(mediumTime)
        }
        else {
            print(hardTime)
        }*/
        
        /*switch hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)
        }*/
    }
    
}

