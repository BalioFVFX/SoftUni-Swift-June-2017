//
//  SettingsViewController.swift
//  Calculator
//
//  Created by Erik Baliov on 7/22/17.
//  Copyright © 2017 Rapid Development Crew. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
  
    
    //Slider Values
    var redSliderValue:CGFloat = 0;
    var greenSliderValue:CGFloat = 0;
    var blueSliderValue:CGFloat = 0;
    var readyToChange:Bool = false
    
    
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var myConfirmButton: UIButton!
    @IBOutlet weak var myRedSlider: UISlider!
    @IBOutlet weak var myGreenSlider: UISlider!
    @IBOutlet weak var myBlueSlider: UISlider!
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
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

    @IBAction func myRedSliderDidChange(_ sender: UISlider) {
        if(mySegmentedControl.selectedSegmentIndex == 0){
        redSliderValue = CGFloat(myRedSlider.value) //Slider value converted to CGFloat Red
            myConfirmButton.backgroundColor = UIColor(red: redSliderValue,
                                                      green: greenSliderValue,
                                                      blue: blueSliderValue,
                                                      alpha: 1.0)
        }
        if(mySegmentedControl.selectedSegmentIndex == 1){
            redSliderValue = CGFloat(myRedSlider.value)
            myConfirmButton.tintColor = UIColor(red: redSliderValue,
                                                      green: greenSliderValue,
                                                      blue: blueSliderValue,
                                                      alpha: 1.0)
        }
        
        if(mySegmentedControl.selectedSegmentIndex == 2){
            redSliderValue = CGFloat(myRedSlider.value)
            myConfirmButton.setTitleColor(UIColor(red: redSliderValue,
                                                    green: greenSliderValue,
                                                    blue: blueSliderValue,
                                                    alpha: 1.0),
                                                    for: .normal)
        }

    }
    
    @IBAction func myGreenSliderDidChange(_ sender: UISlider) {
        if(mySegmentedControl.selectedSegmentIndex == 0){
            
        greenSliderValue = CGFloat(myGreenSlider.value) //Slider value converted to CGFloat Green
            
        myConfirmButton.backgroundColor = UIColor(red: redSliderValue,
                                                  green: greenSliderValue,
                                                  blue: blueSliderValue,
                                                  alpha: 1.0)
        }
        if(mySegmentedControl.selectedSegmentIndex == 1){
            
            greenSliderValue = CGFloat(myGreenSlider.value)
            
            myConfirmButton.tintColor = UIColor(red: redSliderValue,
                                                      green: greenSliderValue,
                                                      blue: blueSliderValue,
                                                      alpha: 1.0)
        }
        
        if(mySegmentedControl.selectedSegmentIndex == 2){
            greenSliderValue = CGFloat(myGreenSlider.value)
            myConfirmButton.setTitleColor(UIColor(red: redSliderValue,
                                                  green: greenSliderValue,
                                                  blue: blueSliderValue,
                                                  alpha: 1.0),
                                                  for: .normal)
        }
    
    }
    
    @IBAction func myBlueSliderDidChange(_ sender: UISlider) {
        if(mySegmentedControl.selectedSegmentIndex == 0){
            
            blueSliderValue = CGFloat(myBlueSlider.value) //Slider value converted to CGFloat Blue
            
            myConfirmButton.backgroundColor = UIColor(red: redSliderValue,
                                                      green: greenSliderValue,
                                                      blue: blueSliderValue,
                                                      alpha: 1.0)
         
        }
        if(mySegmentedControl.selectedSegmentIndex == 1){
            
            blueSliderValue = CGFloat(myBlueSlider.value)
            
            myConfirmButton.tintColor = UIColor(red: redSliderValue,
                                                      green: greenSliderValue,
                                                      blue: blueSliderValue,
                                                      alpha: 1.0)
        }
        
        if(mySegmentedControl.selectedSegmentIndex == 2){
            blueSliderValue = CGFloat(myBlueSlider.value)
            myConfirmButton.setTitleColor(UIColor(red: redSliderValue,
                                                  green: greenSliderValue,
                                                  blue: blueSliderValue,
                                                  alpha: 1.0),
                                                  for: .normal)
        }
    
    }
    
    @IBAction func myConfirmButtonTapped(_ sender: UIButton) {
       
        DataProvider.shouldChange = true //
       
        if(mySegmentedControl.selectedSegmentIndex == 0){
            
        DataProvider.passed_Red_Background_Value = redSliderValue
        DataProvider.passed_Green_Background_Value = greenSliderValue
        DataProvider.passed_Blue_Background_Value = blueSliderValue
        DataProvider.shouldChangeBackground = true
            
        }
       
        if(mySegmentedControl.selectedSegmentIndex == 1){
            
            DataProvider.passed_Red_Tint_Value = redSliderValue
            DataProvider.passed_Green_Tint_Value = greenSliderValue
            DataProvider.passed_Blue_Tint_Value = blueSliderValue
            DataProvider.shouldChangeTint = true

            
            
        }
        
        if(mySegmentedControl.selectedSegmentIndex == 2){
            
            DataProvider.passed_Red_Text_Value = redSliderValue
            DataProvider.passed_Green_Text_Value = greenSliderValue
            DataProvider.passed_Blue_Text_Value = blueSliderValue
            DataProvider.shouldChangeText = true
            
        }
    }
    
    
    
    @IBAction func mySegmentedControlColors(_ sender: UISegmentedControl) {
      
    }
    
    
    
    
}
