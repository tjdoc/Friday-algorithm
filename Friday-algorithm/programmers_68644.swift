//
//  programmers_68644.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/13.
//
//  https://programmers.co.kr/learn/courses/30/lessons/68644

import Foundation

func solution68644(_ numbers:[Int]) -> [Int] {
    let arrSize = numbers.count
    var out = Set<Int>()
    for ii in 0..<arrSize - 1 {
        for jj in ii + 1..<arrSize {
            out.update(with:numbers[ii] + numbers[jj])
        }
    }
    return Array(out).sorted()
}

func test68644() -> Bool {
    let testArr = [[[2,1,3,4,1], [2,3,4,5,6,7]],
                   [[5,0,2,7], [2,5,7,9,12]]]
    for test in testArr {
        guard solution68644(test[0]) == test[1] else {
            return false
        }
    }
    return true
}
