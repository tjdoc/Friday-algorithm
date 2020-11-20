//
//  hackerrank_numberLineJumps.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/20.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    return v2 >= v1 || (x2-x1)%(v1-v2) != 0 ? "NO" : "YES"
}
