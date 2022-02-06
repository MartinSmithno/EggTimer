//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes: [String:Int] = ["Soft":5,
                                  "Medium":7,
                                  "Hard":12]
    var counter: Int = 0
    
    var timer = Timer()
    
    
    @IBOutlet weak var statusOfEgg: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness: String = sender.currentTitle!
            
        counter = (eggTimes[hardness]!)*1
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            (Timer) in
            if self.counter > 0 {
                print ("\(self.counter) seconds")
                self.counter -= 1
            } else {
                Timer.invalidate()
                self.statusOfEgg.text = "Your egg is done!"
            }
        }
        

    }
    
}
