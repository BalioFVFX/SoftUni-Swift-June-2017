//
//  DataProvider.swift
//  Calculator
//
//  Created by Erik Baliov on 7/22/17.
//  Copyright © 2017 Rapid Development Crew. All rights reserved.
//

import UIKit

class DataProvider: NSObject {
    
    static var shouldChange:Bool = false
    
    static var passed_Red_Background_Value:CGFloat = 0
    static var passed_Green_Background_Value:CGFloat = 0
    static var passed_Blue_Background_Value:CGFloat = 0
    static var shouldChangeBackground = false
    
    
    static var passed_Red_Tint_Value:CGFloat = 0
    static var passed_Green_Tint_Value:CGFloat = 0
    static var passed_Blue_Tint_Value:CGFloat = 0
    static var shouldChangeTint:Bool = false
    
    static var passed_Red_Text_Value:CGFloat = 0
    static var passed_Green_Text_Value:CGFloat = 0
    static var passed_Blue_Text_Value:CGFloat = 0
    static var shouldChangeText:Bool = false
}
