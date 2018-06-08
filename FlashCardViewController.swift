//
//  FlashCardViewController.swift
//  TalkingFlashCards
//
//  Created by Dunkley, Rachel A on 10/17/17.
//  Copyright © 2017 Dunkley, Rachel A. All rights reserved.
//

import UIKit
import AVFoundation

class FlashCardViewController: UIViewController {
    
    
    //var speech = AVSpeechUtterance(string: "")
    //let speechSynthesizer = AVSpeechSynthesizer()
    var flashCardsModel = FlashCardsModel()
    var myIndex = 0
    
    
    @IBOutlet weak var displayAnswerLabel: UILabel!
    @IBOutlet weak var displayQuestionLabel: UILabel!
    
    
    var category: String!
    
    //Show and speak the first question when view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        displayQuestionLabel.text = flashCardsModel.getNextQuestion()
        if(speechSwitchIsOn){
            let utterance = AVSpeechUtterance(string: displayQuestionLabel.text!)
            utterance.voice = AVSpeechSynthesisVoice(language: flashCardsModel.getQuestionEncoding())
            
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
        }
        
        displayAnswerLabel.text = "Answer...."
    }
    
    //call the getAnswer function
    //Speak the text and use the encoded language
    @IBAction func showAnswer(_ sender: UIButton) {
        displayAnswerLabel.text = flashCardsModel.getAnswer()
        
        if(speechSwitchIsOn){
            let utterance = AVSpeechUtterance(string: displayAnswerLabel.text!)
            utterance.voice = AVSpeechSynthesisVoice(language: flashCardsModel.getAnswerEncoding())
            
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
        }
    }
    
    
    //call the nextQuestion function
    //Speak the question text, and/or the encoded text language
    //Reset the answer label once nexted again
    @IBAction func nextQuestion(_ sender: UIButton) {
        displayQuestionLabel.text = flashCardsModel.getNextQuestion()
        
        if(speechSwitchIsOn){
            let utterance = AVSpeechUtterance(string: displayQuestionLabel.text!)
            utterance.voice = AVSpeechSynthesisVoice(language: flashCardsModel.getQuestionEncoding())
            
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
        }
        
        displayAnswerLabel.text = "Answer...."
    }
    
    
    //button and var for voice switch on/off
    private var speechSwitchIsOn = true
    
    @IBAction func voiceSwitch(_ sender: UISwitch) {
        speechSwitchIsOn = sender.isOn
    }
    
    
}
