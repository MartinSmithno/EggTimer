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
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness: String = sender.currentTitle!
            
        counter = (eggTimes[hardness]!)*60
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            (Timer) in
            if self.counter > 0 {
                print ("\(self.counter) seconds")
                self.counter -= 1
            } else {
                Timer.invalidate()
            }
        }

    }
    
}
