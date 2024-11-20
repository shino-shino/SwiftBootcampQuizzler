//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        "a",
        "b",
        "c",
        "d"
    ]
    
    var questionNumber =  0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressd(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
//        FIXME: out of range
        questionLabel.text = quiz[questionNumber]
    }
    
}

