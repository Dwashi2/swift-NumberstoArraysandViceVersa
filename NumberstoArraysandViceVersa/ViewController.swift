//
//  ViewController.swift
//  NumberstoArraysandViceVersa
//
//  Created by Daniel Washington Ignacio on 04/06/21.
//

/*
 Write two functions:

 toArray(), which converts a number to an array of its digits.
 toNumber(), which converts an array of digits back to its number.
 Examples

 toArray(235) ➞ [2, 3, 5]

 toArray(0) ➞ [0]

 toNumber([2, 3, 5]) ➞ 235

 toNumber([0]) ➞ 0
 Notes

 All test cases will be weakly positive numbers: >= 0
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.toArray(235))
        print(self.toNumber([2, 3, 5]))
        
       // print(self.toArray(0))
       // print(self.toNumber([0]))
    }
    
    func toArray(_ num: Int) -> [Int] {
        var arrR : [String] = []
        var arrResult: [Character] = []
        var intArr: [Int] = []
        arrR.append("\(num)")
        for n in arrR{
            for m in n {
                arrResult.append(m)
            }
        }
        arrR.removeAll()
        for n in arrResult{
            arrR.append("\(n)")
        }
        intArr = arrR.compactMap { Int($0) }
        return intArr
    }

    func toNumber(_ arr: [Int]) -> Int {
        var arrR: [String] = []
        for n in arr {
            arrR.append("\(n)")
        }
        return Int(arrR.joined()) ?? 0
    }


}

