//
//  leetcode_ReverseNumber.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/27.
//
/*
Example 1:

Input: x = 123
Output: 321
Example 2:

Input: x = -123
Output: -321
*/

import Foundation

class LeetReverseInteger {
    func reverse(_ x: Int) -> Int {
        let out: Int
        let limit = 2147483648 // 2**31
        switch x {
        case x where x > 0:
            out = reversePositiveNum(x)
        case x where x < 0:
            out = -reversePositiveNum(-x)
        default:
            return 0
        }
        return out >= -limit && out <= limit-1 ? out : 0
    }
    func reversePositiveNum(_ x: Int) -> Int {
        var no0 = x
        while no0%10 == 0 {
            no0 /= 10
        }
        return Int(String(String(no0).reversed()))!
    }
}

//Runtime: 4 ms, faster than 91.24% of Swift online submissions for Reverse Integer.
//Memory Usage: 13.7 MB, less than 93.93% of Swift online submissions for Reverse Integer.
