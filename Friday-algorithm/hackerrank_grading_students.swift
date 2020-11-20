//
//  hackerrank_grading_students.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/20.
//

import Foundation

func gradingStudents_old(grades: [Int]) -> [Int] {
    var out = [Int]()
    for grade in grades {
        if grade < 38 {
            out.append(grade)
        } else {
            let rem = grade%5
            switch rem {
            case 3,4:
                out.append(grade+5-rem)
            default:
                out.append(grade)
            }
        }
    }
    return out
}

// using closure
func gradingStudents(grades: [Int]) -> [Int] {
    grades.map { $0 < 38 ? $0 : $0%5 >= 3 ? $0 + 5 - $0%5 : $0 }
}
