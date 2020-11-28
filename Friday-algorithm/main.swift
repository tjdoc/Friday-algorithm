//
//  main.swift
//  algorithm_main
//
//  Created by Tae-Jin Oh on 2020/11/06.
//

import Foundation

/// 20201106
//p1000()
//p1008()
//p2438()
//p2920()
//p8958()
//p11654()

/// 20201113
//print(test12910())
//print(test64061())
//print(test68644())
//print(test42840())
//print(test12901())
//print(test12928())

/// 20201120

//print(solveMeFirst(1, 2) == 3 ? "PASS" : "FAIL")
//
//let originalGrade = [73, 67, 38, 33]
//print(gradingStudents(grades: originalGrade))
//print(gradingStudents(grades: originalGrade) == [75, 67, 40, 33] ? "PASS" : "FAIL")
//
//let a = [17, 28, 30]
//let b = [99, 16, 8]
//print(compareTriplets(a: a, b: b) == [2, 1] ? "PASS" : "FAIL")
//
//let arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
//print(aVeryBigSum(ar: arr) == 5000000015 ? "PASS" : "FAIL")
//
//print(timeConversion(s: "07:05:45PM") == "19:05:45" ? "PASS" : "FAIL")
//
//print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2) == "YES" ? "PASS" : "FAIL")
//print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3) == "NO" ? "PASS" : "FAIL")

/// 20201127

print("Two Sum")
let mysol1 = LeetTwoSum()
print(mysol1.twoSum([3,2,4], 6) == [1,2] ? "PASS" : "FAILED")

print("\nReverse Number")
let mysol2 = LeetReverseInteger()
print(mysol2.reverse(123) == 321 ? "PASS" : "FAILED")
print(mysol2.reverse(-123) == -321 ? "PASS" : "FAILED")
print(mysol2.reverse(120) == 21 ? "PASS" : "FAILED")
print(mysol2.reverse(123) == 321 ? "PASS" : "FAILED")

print("\nPalindrome")
let mysol3 = PalindromeNumber()
print(mysol3.isPalindrome(1234321) == true ? "PASS" : "FAILED")
print(mysol3.isPalindrome(121) == true ? "PASS" : "FAILED")
print(mysol3.isPalindrome(-121) == false ? "PASS" : "FAILED")
print(mysol3.isPalindrome(10) == false ? "PASS" : "FAILED")
print(mysol3.isPalindrome(-101) == false ? "PASS" : "FAILED")
print(mysol3.isPalindrome(1001) == true ? "PASS" : "FAILED")

print("\nRoman To Int")
let mysol4 = Roman()
print(mysol4.romanToInt("III") == 3 ? "PASS" : "FAILED")
print(mysol4.romanToInt("IV") == 4 ? "PASS" : "FAILED")
print(mysol4.romanToInt("IX") == 9 ? "PASS" : "FAILED")
print(mysol4.romanToInt("LVIII") == 58 ? "PASS" : "FAILED")
print(mysol4.romanToInt("MCMXCIV") == 1994 ? "PASS" : "FAILED")
print(mysol4.romanToInt("MDCXCV") == 1695 ? "PASS" : "FAILED")
print(mysol4.romanToInt("D") == 500 ? "PASS" : "FAILED")

print("\nLongest Common Prefix")
let mysol5 = LongestCP()
print(mysol5.longestCommonPrefix(["flower","flow","flight"]) == "fl" ? "PASS" : "FAILED")
print(mysol5.longestCommonPrefix(["dog","racecar","car"]) == "" ? "PASS" : "FAILED")
print(mysol5.longestCommonPrefix(["",""]) == "" ? "PASS" : "FAILED")
print(mysol5.longestCommonPrefix(["ab","a"]) == "a" ? "PASS" : "FAILED")

print("\nMerge Two Sorted Lists")


var list3 = ListNode(3)
var list2 = ListNode(2, list3)
var list1 = ListNode(1, list2)
var l1 = ListNode(100)
var l2 = ListNode(2, l1)
var l3 = ListNode(5, l2)


//print(type(of:list0))
//print(list0.val)
//print(list0.next!.val)
//
//list1.next = list2
//print(list1.val)
//print(list1.next!.val)
//
//print(list0.next!.next!.val)
//
