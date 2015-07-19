//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by appacmp on 19/07/15.
//  Copyright (c) 2015 appcamp. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    var operation = "="
    var numba: Double = 0
    var numba2: Double = 0
    
    func calculate() -> Double {
        switch operation {
        case "+": return numba2 + numba
        case "-": return -numba2 + numba
        case "*": return numba2 * numba
        case "/": return numba/numba2
        default: return 0.0
            
        }
    }
}