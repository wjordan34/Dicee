//
//  ViewController.swift
//  Dicee
//
//  Created by Jordan Walker on 6/10/18.
//  Copyright © 2018 Jordan Walker. All rights reserved.
//

import UIKit


var diceArray : Array = [""]
var randomDiceIndex1: Int = 0
var randomDiceIndex2: Int = 0


class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
 
        diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    }
    
    @IBAction func rollButtonPressed(_ sender: AnyObject) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceImages()
        }
    }

}

