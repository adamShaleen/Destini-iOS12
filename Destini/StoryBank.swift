//
//  StoryBank.swift
//  Destini
//
//  Created by Adam Shaleen on 3/7/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    
    var list = [Story]()
    
    init() {
        
        list.append(Story(textInput: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat and soulless eyes opens the passenger door for you and says: 'Need a ride, boy?'", answerAInput: "I'll hop in. Thanks for the help!", answerBInput: "Well, I don't have many options. Better ask him if he's a murderer."))
        
        list.append(Story(textInput: "He nods slowly, unphased by the question.", answerAInput: "At least he\'s honest. I\'ll climb in.", answerBInput: "Wait, I know how to change a tire."))
        
        list.append(Story(textInput: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", answerAInput: "I love Elton John! Hand him the cassette tape.", answerBInput: "It\'s him or me! You take the knife and stab him."))
        
        list.append(Story(textInput: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", answerAInput: "", answerBInput: ""))
        
        list.append(Story(textInput: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", answerAInput: "", answerBInput: ""))
        
        list.append(Story(textInput: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"", answerAInput: "", answerBInput: ""))
    }
}
