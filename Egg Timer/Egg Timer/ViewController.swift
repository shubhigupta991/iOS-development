//
//  ViewController.swift
//  Egg Timer
//
//  Created by Shubhangi Gupta on 11/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12

    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle
        
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

