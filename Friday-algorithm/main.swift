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

print(solveMeFirst(1, 2) == 3 ? "PASS" : "FAIL")

let originalGrade = [73, 67, 38, 33]
print(gradingStudents(grades: originalGrade))
print(gradingStudents(grades: originalGrade) == [75, 67, 40, 33] ? "PASS" : "FAIL")

let a = [17, 28, 30]
let b = [99, 16, 8]
print(compareTriplets(a: a, b: b) == [2, 1] ? "PASS" : "FAIL")

let arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
print(aVeryBigSum(ar: arr) == 5000000015 ? "PASS" : "FAIL")

print(timeConversion(s: "07:05:45PM") == "19:05:45" ? "PASS" : "FAIL")

print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2) == "YES" ? "PASS" : "FAIL")
print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3) == "NO" ? "PASS" : "FAIL")
