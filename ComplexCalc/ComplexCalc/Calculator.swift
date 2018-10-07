//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

/*

assert(calc.mathOp(args: [1, 2, 3], beg: 0, op: { $0 + $1 }) == 6)
    // this is (((0 op 1) op 2) op 3)
assert(calc.mathOp(args: [1, 2, 3, 4, 5], beg: 0, op: { $0 + $1 }) == 15)
    // this is (((((0 op 1) op 2) op 3) op 4) op 5)
assert(calc.mathOp(args: [1, 1, 1, 1, 1], beg: 1, op: { $0 * $1 }) == 1)
    // this is (((((1 op 1) op 1) op 1) op 1) op 1)
*/

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ arr: [Int]) -> Int {
        return arr.reduce(0, {$0 + $1})
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
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
    
    func mathOp(lhs: Int, rhs: Int, op: (_:Int, _:Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func count(_ arr: [Int]) -> Int {
        return arr.count
    }
    
    func avg(_ arr: [Int]) -> Int {
        return count(arr) == 0 ? 0 : add(arr) / count(arr)
    }
    
}
