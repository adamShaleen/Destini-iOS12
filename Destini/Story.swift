//
//  Story.swift
//  Destini
//
//  Created by Adam Shaleen on 3/7/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    let text: String
    let answerA: String
    let answerB: String
    
    init(textInput: String, answerAInput: String, answerBInput: String) {
        text = textInput
        answerA = answerAInput
        answerB = answerBInput
    }
}
