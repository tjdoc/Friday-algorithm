//
//  hackerrank_numberLineJumps.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/20.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    let result: Bool
    switch (x1, v1, x2, v2) {
    case (x1, v1, x2, v2) where v2 >= v1:
        result = false
    case (x1, v1, x2, v2) where (x2-x1)%(v1-v2) != 0:
        result = false
    default:
        result = true
    }
    return result ? "YES" : "NO"
}
