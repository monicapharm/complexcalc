//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

/*
assert(calc.add(lhs: 2, rhs: 2) == 4)
assert(calc.subtract(lhs: 2, rhs: 2) == 0)
assert(calc.multiply(lhs: 2, rhs: 2) == 4)
assert(calc.divide(lhs: 2, rhs: 2) == 1)

assert(calc.mathOp(lhs: 5, rhs: 5, op: { ($0 + $1) + ($0 * $1) }) == 35)
assert(calc.mathOp(lhs: 10, rhs: -5, op: { ($0 + $1) + ($0 - $1) }) == 20)

assert(calc.add([1, 2, 3, 4, 5]) == 15)
assert(calc.multiply([1, 2, 3, 4, 5]) == 120)
assert(calc.count([1, 2, 3, 4, 5, 6, 7, 8]) == 8)
assert(calc.count([]) == 0)
assert(calc.avg([2, 2, 2, 2, 2, 2]) == 2)
assert(calc.avg([1, 2, 3, 4, 5]) == 3)
assert(calc.avg([1]) == 1)
*/

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ arr: [Int]) -> Int {
        return arr.reduce(0, {$0 + $1})
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ arr: [Int]) -> Int {
        return arr.reduce(1, {$0 * $1})
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
}
