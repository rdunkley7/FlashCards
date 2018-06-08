//
//  FlashCardCellData.swift
//  FlashCards 2.0
//
//  Created by Dunkley, Rachel A on 12/1/17.
//  Copyright © 2017 Dunkley, Rachel A. All rights reserved.
//

import Foundation
import UIKit


//FlashCardCell data holds the data for the tableViewController
class FlashCardCellData{
    
    //Struct to hold/provide data
    struct CardData{
        
        let cardCategory : String!
        let coverImage : UIImage!
    }
    
    //Array for the section titles
    var sectionTitlesArray: [String] = ["Computer Science", "Language Arts", "Natural Sciences"]
    
    var cardSectionsArray: [[CardData]] = [[]]
    
    //Loads the sections' array data - flashcard category and the picture
    func loadCardSectionsArray(){
        cardSectionsArray = [
            [CardData(cardCategory: "OO", coverImage: #imageLiteral(resourceName: "computer"))],
            [CardData(cardCategory: "Language", coverImage: #imageLiteral(resourceName: "language"))],
            [CardData(cardCategory: "Periodic Table", coverImage: #imageLiteral(resourceName: "atom")),
             CardData(cardCategory: "Molecular Biology", coverImage: #imageLiteral(resourceName: "biologyy"))]
        ]
        
        
    }

}


