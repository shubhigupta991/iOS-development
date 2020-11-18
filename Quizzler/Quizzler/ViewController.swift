//
//  ViewController.swift
//  Quizzler
//
//  Created by Shubhangi Gupta on 18/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than One.","True"],
        ["Three + Eight is less than Ten.","False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer{
            print("Right!")
        }
        else{
            print("Wrong!")
        }
        if questionNumber < quiz.count - 1{
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        
            updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

