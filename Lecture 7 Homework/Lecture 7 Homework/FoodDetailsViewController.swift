//
//  FoodDetailsViewController.swift
//  Lecture 7 Homework
//
//  Created by Erik Baliov on 4.08.17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class FoodDetailsViewController: UIViewController {

    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var dishNameLabel: UILabel!
    @IBOutlet weak var dishTimeToCookLabel: UILabel!
    @IBOutlet weak var recipeTextView: UITextView!
    
    var food: [FoodsTypes:String]?
    var favoriteFood: [FoodsTypes:String]?
    var numberOfSection: Int = 20
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        if(self.numberOfSection == 0){
            self.dishNameLabel.text = self.favoriteFood?[.name]
            self.dishTimeToCookLabel.text = self.favoriteFood?[.duration]
            self.recipeTextView.text = self.favoriteFood?[.recipe]
            self.foodImageView.image = UIImage(named: self.favoriteFood?[.image] ?? "")
            
        }
        
        if(self.numberOfSection == 1){
        self.dishNameLabel.text = self.food?[.name]
        self.dishTimeToCookLabel.text = self.food?[.duration]
        self.recipeTextView.text = self.food?[.recipe]
        self.foodImageView.image = UIImage(named: self.food?[.image] ?? "")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
