//
//  programmers_12928.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/13.
//
//  https://programmers.co.kr/learn/courses/30/lessons/12928

import Foundation

func solution12928(_ n:Int) -> Int {
    switch n {
    case 0:
        return 0
    case 1:
        return 1
    case 2,3:
        return n+1
    default:
        break
    }
    
    var factorSum = 1 + n
    for ii in 2...n/2 {
        factorSum += (n%ii == 0) ? ii : 0
    }
    return factorSum
}

func test12928() -> Bool {
    let testArr = [[12, 28],
                   [5, 6]]
    for test in testArr {
        guard solution12928(test[0]) == test[1] else {
            return false
        }
    }
    return true
}
