//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by shinotai on 2024/12/01.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let text: String
    let answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
