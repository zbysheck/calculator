//
//  ViewController.swift
//  Calculator
//
//  Created by appacmp on 19/07/15.
//  Copyright (c) 2015 appcamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!

    var numba: Double = 0.0
    var operation: String = "."
    
    
    var displayValue: Double {
        get {
            return (display.text! as NSString).doubleValue
        }
        
        set{
            display.text = "\(newValue)"
        }
    }

    @IBAction func pushDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        display.text = display.text == "0" ? digit : display.text! + digit
    }
    
    @IBAction func pushOperator(sender: UIButton) {
        operation = sender.currentTitle!
        numba = displayValue
        display.text = "0"
        
    }
    
    @IBAction func compute() {
        switch operation {
        case "+": displayValue = displayValue + numba
        case "-": displayValue = -displayValue + numba
        case "*": displayValue = displayValue * numba
        case "/": displayValue = numba/displayValue
        default: displayValue = 0.0
            
        }
    }
    @IBAction func clear(sender: AnyObject) {
        display.text = "0"
        
    }
}

