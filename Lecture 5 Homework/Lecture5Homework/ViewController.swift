//
//  ViewController.swift
//  Lecture5Homework
//
//  Created by Erik Baliov on 7/14/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func dotButton(_ sender: UIButton) {
        if(numbersText.text! != "" && calcbuttonPressed != true){
            numbersText.text! += "."
        }
    }
    
    //Variables needed
    var firstNumbers: Double = 0
    var secondNumbers: Double = 0
    var result: Double = 0
 
    var calcbuttonPressed: Bool = false
    var buttonPlusPressed: Bool = false
    var buttonMinusPressed: Bool = false
    var buttonMultiplyPressed: Bool = false
    var buttonDividePressed: Bool = false
    var readyToClearScreen: Bool = false
    
    
    @IBOutlet weak var resultFiled: UILabel!
    @IBOutlet weak var numbersText: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    override func didReceiveMemoryWarning() {
       
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //All the numbers buttons are connected here
    @IBAction func numbersButtons(_ sender: UIButton) {
        numbersText.text = numbersText.text! + String(sender.tag)
        
        //If Plus || Minus || Multiply || Divide are not pressed:
        if(calcbuttonPressed == false){
        firstNumbers = Double(numbersText.text!)!
        }
        
         //If Plus || Minus || Multiply || Divide are pressed:
            if(calcbuttonPressed == true){
                secondNumbers = Double(numbersText.text!)!
            }
        
        //If the calculation was done, and we want new calculation:
        if(readyToClearScreen == true){
            firstNumbers = 0
            secondNumbers = 0
            numbersText.text! = ""
            resultFiled.text! = "Numbers:"
            calcbuttonPressed = false
            readyToClearScreen = false
        }
    }
    
    
    
    
    
    

    //All calculation buttons are connected here:
    @IBAction func calculationButtons(_ sender: UIButton) {
    
        calcbuttonPressed = true //Now we are writing on the second variable, not the first one
      
        switch(sender.tag){
       case 10:
            numbersText.text! = ""
            resultFiled.text = "Numbers: +"
            buttonPlusPressed = true //Set Plus as true
        case 11:
                numbersText.text! = ""
               resultFiled.text = "Numbers: -"
                buttonMinusPressed = true
        case 12:
                numbersText.text! = ""
               resultFiled.text = "Numbers: *"
                buttonMultiplyPressed = true
        case 13:
                numbersText.text! = ""
                resultFiled.text = "Numbers: /"
                buttonDividePressed = true
        
        case 14:
            if(buttonPlusPressed == true){
                buttonPlusPressed = false
                numbersText.text! = ""
                numbersText.text! = String(firstNumbers + secondNumbers)
                resultFiled.text! = "Result:"
                readyToClearScreen = true
            }
            else if(buttonMinusPressed == true){
                buttonMinusPressed = false
                numbersText.text! = ""
                numbersText.text! = String(firstNumbers - secondNumbers)
                readyToClearScreen = true
            }
            else if(buttonMultiplyPressed == true){
                buttonMultiplyPressed = false
                numbersText.text! = ""
                numbersText.text! = String(firstNumbers * secondNumbers)
                resultFiled.text! = "Result:"
                readyToClearScreen = true
            }
            else if(buttonDividePressed == true){
                buttonDividePressed = false
                numbersText.text! = ""
                if(secondNumbers == 0)
                {
                    resultFiled.text! = "Cannot divide by zero"
                    readyToClearScreen = true
                }
                else
                {
                numbersText.text! = String(firstNumbers / secondNumbers)
                resultFiled.text! = "Result:"
                readyToClearScreen = true
                }

            }
     
            default:
            break
        }
    }
}

