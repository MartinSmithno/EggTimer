//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime: Int = 5
    let mediumTime: Int = 7
    let hardTime: Int = 12
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness: String = sender.currentTitle!
    
/*        if(hardness.contains("Soft")){
            print(softTime)
        }else if (hardness.contains("Medium")){
            print(mediumTime)
        }else if(hardness.contains("Hard")){
            print(hardTime)
        }
 */
        switch hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)
        default:
            print("Wrong Time!")
        }

    }
    

}
