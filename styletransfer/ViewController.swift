//
//  ViewController.swift
//  styletransfer
//
//  Created by Ram Yoogesh  on 2020-03-30.
//  Copyright © 2020 Ram Yoogesh . All rights reserved.
//

import UIKit   //ios framework whihc has butttons and all he stuff

class ViewController: UIViewController {

    // put the methods and variables here
    
    var flipcount : Int  =  0 {
        didSet {
            FlipcountLabel.text = " Flips : \(flipcount)"
        }
    }
    
    // Creating an array of buttons
    // [UIButton] specifies an array of type button
    @IBOutlet var Cardbuttons: [UIButton]!
    
    // Defining an label with an optional
    @IBOutlet weak var FlipcountLabel: UILabel!
    
    var emojiarray: Array<String> = ["🎃 ", "👻 ", "👻 ", " 🎃"]
     
    @IBAction func touchCard(_ sender: UIButton) {
        flipcount += 1
        let cardnumber = Cardbuttons.firstIndex(of: sender)!
        print("cardnumber = \(String(describing: cardnumber))")
        Flipcard(withEmoji: emojiarray[cardnumber], on: sender)
    }
    func Flipcard (withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for:  UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else{
            button.setTitle(emoji,  for:  UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

