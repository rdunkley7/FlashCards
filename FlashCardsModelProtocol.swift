//
//  FlashCardsProtocol.swift
//  FlashCards1
//
//  Created by Lin, Chi-Cheng on 10/15/16.
//  Copyright © 2016 Lin, Chi-Cheng. All rights reserved.
//

// Protocol to be adopted by the flashcards model
protocol FlashCardsModelProtocol {
    
    // The category of flash cards
    var category: String {get set}
    
    // Get next question
    func getNextQuestion() -> String
    
    // Get the encoding of current question
    func getQuestionEncoding() -> String
    
    // Get the answer to the current question
    func getAnswer() -> String
    
    // Get the encoding of the answer
    func getAnswerEncoding() -> String
}