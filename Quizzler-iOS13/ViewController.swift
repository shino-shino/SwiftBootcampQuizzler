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
        Question(text: "Is the sun a planet?", answer: "False"),
        Question(text: "Do penguins live in the Sahara Desert?", answer: "False"),
        Question(text: "Is water made up of hydrogen and carbon?", answer: "False"),
        Question(text: "Can humans breathe underwater without equipment?", answer: "False"),
        Question(text: "Does 2 plus 2 equal 4?", answer: "True"),
        Question(text: "Is New York the capital of the United States?", answer: "False"),
        Question(text: "Do elephants fly in the sky?", answer: "False"),
        Question(text: "Is the moon smaller than the Earth?", answer: "True"),
        Question(text: "Do fish walk on land naturally?", answer: "False"),
        Question(text: "Is fire cold to the touch?", answer: "False")
    ]
    
    var questionNumber =  0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressd(_ sender: UIButton) {
        
        let useAnswer = sender.currentTitle
        let actualAanswer = quiz[questionNumber].answer
        
        if useAnswer == actualAanswer {
            print("Correct")
        } else {
            print("Wrong")
        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
    }
    
}

