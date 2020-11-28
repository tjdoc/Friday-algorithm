//
//  leetcode_PalindromeNumber.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/27.
//
/*
Determine whether an integer is a palindrome.
An integer is a palindrome when it reads the same backward as forward.

Follow up: Could you solve it without converting the integer to a string?
*/

import Foundation

class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        switch x {
        case 0..<10:
            return true
        case x where x >= 10:
            return isPalWithoutString(x)
//            return isPalWithString(x)
        default:
            return false
        }
    }
    func isPalWithoutString(_ x: Int) -> Bool {
        var y = x
        var digitArr = [Int]()
        let digitNum = Int(log10(Float(x)))+1
        var idx0 = digitNum/2 - 1
        var idx1 = Int(ceil(Double(digitNum)/2))
        var idx = 0
        while y != 0 {
            if idx >= idx1 {
                guard digitArr[idx0] == y%10 else {return false}
                idx0 -= 1
                idx1 += 1
            } else {
                digitArr.append(y%10)
            }
            y /= 10
            idx += 1
        }
        return true
    }
    func isPalWithString(_ x: Int) -> Bool {
        let xStr = String(x)
        let firstHalf = xStr[xStr.startIndex ..< xStr.index(xStr.startIndex, offsetBy: xStr.count/2)]
        let otherHalfReveresd = String(String(xStr[xStr.index(xStr.startIndex, offsetBy: Int(ceil(Double(xStr.count)/2)))...]).reversed())
        return firstHalf == otherHalfReveresd
    }
}

// isPalWithoutString
//Runtime: 44 ms, faster than 67.74% of Swift online submissions for Palindrome Number.
//Memory Usage: 14.8 MB, less than 5.41% of Swift online submissions for Palindrome Number.

// isPalWithString
//Runtime: 52 ms, faster than 46.29% of Swift online submissions for Palindrome Number.
//Memory Usage: 14.3 MB, less than 32.87% of Swift online submissions for Palindrome Number.
