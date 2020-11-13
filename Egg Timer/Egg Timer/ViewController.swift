//
//  ViewController.swift
//  Egg Timer
//
//  Created by Shubhangi Gupta on 11/11/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:  AVAudioPlayer?
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard" : 7]
    var secondsPassed = 0
    var totalTime = 0
    
    var timer = Timer()
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressView.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    func playSound(){
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }

    
    @objc func updateTimer(){
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            progressView.progress = Float(percentageProgress)
        
        }
        else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            playSound()
        }
    
        
}
}

