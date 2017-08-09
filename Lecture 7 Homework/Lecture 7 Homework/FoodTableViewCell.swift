//
//  FoodTableViewCell.swift
//  Lecture 7 Homework
//
//  Created by Erik Baliov on 5.08.17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

protocol FoodTableViewCellDelegate: class {
    func didPressFavoriteButton(cell: FoodTableViewCell, button: UIButton)
}

class FoodTableViewCell: UITableViewCell{

    @IBOutlet weak var DishImageCell: UIImageView!
    @IBOutlet weak var DishNameCellLabel: UILabel!
    @IBOutlet weak var DishDurationCellLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    var currentCell: NSIndexPath? //Tracking the number of section
    
    weak var delegate: FoodTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
        self.delegate?.didPressFavoriteButton(cell: self, button: sender)
    }

}
