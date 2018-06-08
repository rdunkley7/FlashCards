//
//  FlashCardsModel.swift
//  TalkingFlashCards
//
//  Created by Dunkley, Rachel A on 10/17/17.
//  Copyright © 2017 Dunkley, Rachel A. All rights reserved.
//

import Foundation

// Adopts the FlashCardsModelProtocol
class FlashCardsModel: FlashCardsModelProtocol{
    
    // initialize the category of flash cards
    var category: String = "OO"
    
    // Initialize the index for questions
    private var questionIndex = 0
    
    
    // Get the next question
    func getNextQuestion() -> String{
        
        questionIndex = Int(arc4random_uniform(UInt32(flashCardsDictionary[category]!.count)))
        return flashCardsDictionary[category]![questionIndex].question
    }
    
    
    // Get the encoding of the current question
    func getQuestionEncoding() -> String{
        
        return flashCardsDictionary[category]![questionIndex].questionEncoding
    }
    // Get the answer to the current question
    func getAnswer() -> String{
        
        return flashCardsDictionary[category]![questionIndex].answer
    }
    
    // Get the encoding of the answer
    func getAnswerEncoding() -> String{
        
        return flashCardsDictionary[category]![questionIndex].answerEncoding
    }
    
    
    
}
