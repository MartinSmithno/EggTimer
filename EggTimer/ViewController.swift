//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes: [String:Int] = ["Soft":5, "Medium":7, "Hard":12]
    var counter: Int = 0
    var timer = Timer()
    var totalTime: Int = 0
    var player: AVAudioPlayer?
    
    @IBOutlet weak var statusOfEgg: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness: String = sender.currentTitle!
        statusOfEgg.text = hardness
        counter = (eggTimes[hardness]!)*1
        totalTime = counter
        progressBar.progress = 1.0
        
        timer =  Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
    }
    
    @objc func updateTimer() {
        
        if counter > 0 {
            print ("\(self.counter) seconds")
                counter -= 1
                progressBar.progress = Float(counter)/Float(totalTime)
        } else {
            timer.invalidate()
            statusOfEgg.text = "Your egg is ready!"
            playAlarm()
            }
        }
            
    func playAlarm() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }

}
