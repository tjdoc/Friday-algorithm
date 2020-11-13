//
//  programmers_12910.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/13.
//
//  https://programmers.co.kr/learn/courses/30/lessons/12910

import Foundation

func solution12910_old(_ arr:[Int], _ divisor:Int) -> [Int] {
    var out = [Int]()
    for num in arr {
        if num%divisor == 0 {
            out.append(num)
        }
    }
    out.sort()
    return out.count == 0 ? [-1] : out
}

func solution12910(_ arr:[Int], _ divisor:Int) -> [Int] {
    let out = arr.sorted().filter{$0%divisor == 0}
    return out.count == 0 ? [-1] : out
}

func test12910() -> Bool {
    let testArr = [[[5,9,7,10],5, [5,10]],
                   [[2,36,1,3],1, [1,2,3,36]],
                   [[3,2,6], 10, [-1]]]
    for ii in 0..<testArr.count {
        guard testArr[ii][2] as! [Int] == solution12910(testArr[ii][0] as! [Int], testArr[ii][1] as! Int) else {
            return false
        }
    }
    return true
}
