//
//  ViewController.swift
//  RichSwift
//
//  Created by kenneth.ng@lifehikes.com on 24/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var dices = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = UIImage(named: "dice6")
        diceImageView1.alpha = 0.5
        
        diceImageView2.image = UIImage(named: "dice4")
        diceImageView2.alpha = 0.5
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("button is pressed")
//        diceImageView1.image = UIImage(named: "dice1")
//        diceImageView2.image = UIImage(named: "dice2")
        
        diceImageView1.image = UIImage(named: dices[Int.random(in: 0...5)])
        diceImageView2.image = UIImage(named: dices[Int.random(in: 0...5)])
        
    }
    
}

