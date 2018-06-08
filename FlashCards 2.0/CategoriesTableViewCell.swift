//
//  CategoriesTableViewCell.swift
//  FlashCards 2.0
//
//  Created by Dunkley, Rachel A on 11/23/17.
//  Copyright © 2017 Dunkley, Rachel A. All rights reserved.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {

    //TableViewCell - lable and image, configured from tableViewController
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

