//
//  GameViewController.swift
//  Fiend
//
//  Created by Patrick Schreiber on 3/31/19.
//  Copyright © 2019 Nori Labs. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    
    // Has to be either initialized with init() or assignment, like below
    var myClassVar: Int = 0
    
    // Swift has inference, so Swift will know that the following var is an int
    // didSet is a callback and will be called every time the variable is set.
    var incrementor = 0 {
        didSet {
            incrementorLabel.text = "Incremented \(incrementor) times"
        }
    }
    
    // Outlet Collection
    // Alt Syntax @IBOutlet var inputFields: Array<UIButton>!
    
    @IBOutlet weak var incrementorLabel: UILabel!
    
    @IBAction func startButton(_ sender: UIButton) {
        print("clicked")
        startGame(withText: "Start", on: sender)
        incrementor += 1
    }

    // Each param has two names, the external (withText) and the internal (text)
    // Params should be declared like you're reading english (withText)
    func startGame(withText text: String, on button: UIButton) {
        if button.currentTitle == "Start" {
            button.setTitle("Here we go...", for: UIControl.State.normal)
            // When you start typing “color” use the color literal, then you get
            // a color picker for the background color.
            button.backgroundColor = #colorLiteral(red: 0.2445866466, green: 0.8175527453, blue: 0.4396009147, alpha: 1)
        }
    }
}
