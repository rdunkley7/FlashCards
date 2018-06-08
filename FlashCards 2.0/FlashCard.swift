//
//  FlashCard.swift
//  TalkingFlashCards
//
//  Created by Dunkley, Rachel A on 10/17/17.
//  Copyright © 2017 Dunkley, Rachel A. All rights reserved.
//

import Foundation

struct FlashCard: FlashCardProtocol{
    
    // The question of a flash card
    var question: String
    
    // The encoding of the question, with defualt value set to "en-US"
    var questionEncoding = "en-US"
    
    // The answer to the question
    var answer: String
    
    // The encoding of the answer, with defualt value set to "en-US"
    var answerEncoding = "en-US"
    
    
    // Initializer for all the properties
    init(question: String, questionEncoding: String, answer: String, answerEncoding: String){
        self.question = question
        self.questionEncoding = question
        self.answer = answer
        self.answerEncoding = answer
    }
    
    // Initializer without both encodings
    init(question: String, answer: String){
        self.question = question
        self.answer = answer
        
    }
    
    // Initializer without answer's encoding
    init(question: String, questionEncoding: String, answer: String){
        self.question = question
        self.questionEncoding = questionEncoding
        self.answer = answer
    }
    
    // Initializer without question's encoding
    init(question: String, answer: String, answerEncoding: String){
        self.question = question
        self.answer = answer
        self.answerEncoding = answerEncoding
    }
    
    
    
    
}
