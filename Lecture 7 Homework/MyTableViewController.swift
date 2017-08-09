//
//  MyTableViewController.swift
//  Lecture 7 Homework
//
//  Created by Erik Baliov on 4.08.17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    var numberOfSection: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
   
        
        switch section {
        case 0:
            return FoodsData.sortedFoods.count
        case 1:
            return FoodsData.foods.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0){
            return "Favorite foods"
        }
        else{
            return "Foods"
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        
        if(indexPath.section == 0){ // Favorite
            cell.DishNameCellLabel.text = FoodsData.sortedFoods[indexPath.row][.name]
            cell.DishDurationCellLabel?.text = FoodsData.sortedFoods[indexPath.row][.duration]
            cell.DishImageCell?.image = UIImage(named: FoodsData.sortedFoods[indexPath.row][.image] ?? "")
            
            //cell.favoriteButton.isHidden = true
        }
       
        if(indexPath.section == 1){
        // Configure the cell...
        cell.DishNameCellLabel.text = FoodsData.foods[indexPath.row][.name]
        cell.DishDurationCellLabel?.text = FoodsData.foods[indexPath.row][.duration]
        cell.DishImageCell?.image = UIImage(named: FoodsData.foods[indexPath.row][.image] ?? "")
      
        }
        cell.delegate = self
        cell.favoriteButton.tag = indexPath.row
        return cell
    }
    
    //When tapping on cell:
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
      //
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        

        //Just a little before the FoodDetailsViewController beign display, add data to it.
        guard let segueIdentifier = segue.identifier else{
            return
        }
        
        switch segueIdentifier{
        case "foodDetailsSegueIdentifier":
            //So we know on which cell we clicked:
            guard let cell = sender as? UITableViewCell else{
                assert(false)
                return
            }
            guard let indexPath = tableView.indexPath(for: cell) else{
                return
            }
         
            (segue.destination as! FoodDetailsViewController).numberOfSection = indexPath.section
            (segue.destination as! FoodDetailsViewController).food = FoodsData.foods[indexPath.row]
            if(FoodsData.sortedFoods.isEmpty == false && indexPath.section == 0){
            (segue.destination as! FoodDetailsViewController).favoriteFood = FoodsData.sortedFoods[indexPath.row]
            }
        default:
            break
        }
    }


}

extension MyTableViewController: FoodTableViewCellDelegate{
    
    func didPressFavoriteButton(cell: FoodTableViewCell, button: UIButton){
            if(FoodsData.foods[cell.favoriteButton.tag][.favorite] == "no"){
            FoodsData.foods[cell.favoriteButton.tag][.favorite] = "yes"
            FoodsData.sortedFoods.append(FoodsData.foods[cell.favoriteButton.tag])
                
            
                
        }
          tableView.reloadData()
      

    }
    
}
