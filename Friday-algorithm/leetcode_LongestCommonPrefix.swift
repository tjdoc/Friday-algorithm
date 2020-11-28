//
//  leetcode_LongestCommonPrefix.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/27.
//
/*
 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */

import Foundation

class LongestCP {
    func longestCommonPrefix(_ strs: [String]) -> String {
        switch strs.count {
        case 0:
            return ""
        case 1:
            return strs[0]
        default:
            break
        }
        var minLen = strs.map{$0.count}.min()!
        guard minLen != 0 else {return ""}
        let str0 = strs[0]
        for idx in 1..<strs.count {
            for ii in 0 ..< minLen {
                if str0[str0.index(str0.startIndex, offsetBy: ii)] !=
                    strs[idx][strs[idx].index(strs[idx].startIndex, offsetBy: ii)] {
                    minLen = min(minLen, ii)
                    guard minLen != 0 else {return ""}
                    break
                }
            }
        }
        return String(str0[str0.startIndex ..< str0.index(str0.startIndex, offsetBy: minLen)])
    }
}

//Runtime: 40 ms, faster than 33.50% of Swift online submissions for Longest Common Prefix.
//Memory Usage: 14 MB, less than 94.12% of Swift online submissions for Longest Common Prefix.
