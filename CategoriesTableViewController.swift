//
//  CategoriesTableViewController.swift
//  FlashCards 2.0
//
//  Created by Dunkley, Rachel A on 11/23/17.
//  Copyright © 2017 Dunkley, Rachel A. All rights reserved.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    
    
    var myIndex = 0
    var flashCardCellData = FlashCardCellData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flashCardCellData.loadCardSectionsArray()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return flashCardCellData.cardSectionsArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flashCardCellData.cardSectionsArray[section].count
        
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return flashCardCellData.sectionTitlesArray[section]
        
    }
    
    //Configure the tableViewCells with title and images
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "CategoriesTableViewCell"
        //downcast
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CategoriesTableViewCell
        
        // Configure the cell text:
        cell.categoryLabel?.text = flashCardCellData.cardSectionsArray[indexPath.section][indexPath.row].cardCategory
        
        //Configure the cell image:
        cell.coverImage?.image = flashCardCellData.cardSectionsArray[indexPath.section][indexPath.row].coverImage
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        shouldPerformSegue(withIdentifier: "category", sender: self)
    }
    
    //Segue the selected FC category to the FlashCardViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination
        
        if let navigationController = destinationViewController as? UINavigationController{
            destinationViewController = navigationController.visibleViewController ?? destinationViewController
        }
        if let flashCardViewController = destinationViewController as? FlashCardViewController,
            let _ = segue.identifier{
            
            let indexPath = tableView.indexPathForSelectedRow!
            flashCardViewController.myIndex = indexPath.row
            
            flashCardViewController.flashCardsModel.category = flashCardCellData.cardSectionsArray[indexPath.section][indexPath.row].cardCategory
            
            
            
            flashCardViewController.navigationItem.title = flashCardCellData.cardSectionsArray[indexPath.section][indexPath.row].cardCategory
            
            
        }
    }
    
    
    
    
    
    
}
