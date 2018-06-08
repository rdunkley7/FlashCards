//
//  FlashCardsDictionary.swift
//  FlashCards1
//
//  Created by Lin, Chi-Cheng on 10/9/16.
//  Copyright © 2016 Lin, Chi-Cheng. All rights reserved.
//

import Foundation

// Dictionary maintaining category-to-flashcards mapping

var flashCardsDictionary: [String:[FlashCard]] = [
    "OO": ooFlashCards,
    "Language": languageFlashCards,
    "Periodic Table": PeriodicTableFlashCards,
    "Molecular Biology": MolecularFC
]
    
