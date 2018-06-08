//
//  FlashCardProtocol.swift
//  FlashCards1
//
//  Created by Lin, Chi-Cheng on 10/15/16.
//  Copyright © 2016 Lin, Chi-Cheng. All rights reserved.
//

// Protocol to be adopted by the flash card struct
protocol FlashCardProtocol {
    
    // The question of a flash card
    var question: String {get}
    
    // The encoding of the question, with defualt value set to "en-US"
    var questionEncoding: String {get}

    // The answer to the question
    var answer: String {get}
    
    // The encoding of the answer, with defualt value set to "en-US"
    var answerEncoding: String {get}
    
    // Initializer for all the properties
    init(question: String, questionEncoding: String, answer: String, answerEncoding: String)
    
    // Initializer without both encodings
    init(question: String, answer: String)
    
    // Initializer without answer's encoding
    init(question: String, questionEncoding: String, answer: String)
    
    // Initializer without question's encoding
    init(question: String, answer: String, answerEncoding: String)
}
