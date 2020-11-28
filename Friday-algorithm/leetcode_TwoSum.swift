//
//  leetcode_TwoSum.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/27.
//
/*
Input: nums = [3,3], target = 6
Output: [0,1]

Constraints:

2 <= nums.length <= 103
-109 <= nums[i] <= 109
-109 <= target <= 109
Only one valid answer exists.
*/

import Foundation

class LeetTwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for ii in 0..<nums.count-1 {
            if let jj = nums.lastIndex(of: target-nums[ii]) {
                if ii != jj {return [ii, jj]}
            }
        }
        // since the problem says there is one valid answer, the loop should not reach here
        return [-1,-1]
    }
}

//Runtime: 36 ms, faster than 57.13% of Swift online submissions for Two Sum.
//Memory Usage: 14 MB, less than 90.04% of Swift online submissions for Two Sum.
