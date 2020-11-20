//
//  hackerrank_grading_students.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/20.
//

import Foundation


func gradingStudents(grades: [Int]) -> [Int] {
    var out = [Int]()
    for grade in grades {
        if grade < 38 {
            out.append(grade)
        } else {
            let rem = grade%10
            switch rem {
            case 3,4:
                out.append(grade+5-rem)
            case 8,9:
                out.append(grade+10-rem)
            default:
                out.append(grade)
            }
        }
    }
    return out
}
