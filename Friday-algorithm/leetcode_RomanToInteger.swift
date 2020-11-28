//
//  leetcode_RomanToInteger.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/27.
//
/*
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 
 Input: s = "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.
 Example 5:

 Input: s = "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
  

 Constraints:

 1 <= s.length <= 15
 s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
 It is guaranteed that s is a valid roman numeral in the range [1, 3999].
 */

import Foundation

class Roman {
    func romanToInt_v1(_ s: String) -> Int {
        var out = 0
        var romanStr = s
        let dicSpecial = ["CM": 900, "CD": 400, "XC": 90, "XL": 40, "IX": 9, "IV": 4]
        let dic = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        dicSpecial.keys.forEach {
            if romanStr.contains($0) {
                out += dicSpecial[$0]!
                romanStr = romanStr.replacingOccurrences(of:$0, with:"")
            }
        }
        romanStr.forEach {
            out += dic[String($0)]!
        }
        return out
    }
    func romanToInt(_ s: String) -> Int {
        let dic = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var idx = 0, out = 0
        while idx <= s.count-1 {
            let v0 = dic[String(s[s.index(s.startIndex, offsetBy: idx)])]!
            let v1 = idx < s.count-1 ? dic[String(s[s.index(s.startIndex, offsetBy: idx+1)])]! : 0
            out += v0 < v1 ? v1 - v0 : v0
            idx += v0 < v1 ? 2 : 1
        }
        return out
    }
}

// v1
//Runtime: 76 ms, faster than 5.22% of Swift online submissions for Roman to Integer.
//Memory Usage: 15.9 MB, less than 10.22% of Swift online submissions for Roman to Integer.

// final version
//Runtime: 24 ms, faster than 73.70% of Swift online submissions for Roman to Integer.
//Memory Usage: 14.3 MB, less than 80.22% of Swift online submissions for Roman to Integer.
