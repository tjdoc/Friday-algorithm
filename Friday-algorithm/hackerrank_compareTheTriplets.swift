//
//  hackerrank_compareTheTriplets.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/20.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var asum = 0, bsum = 0
    for (ascore, bscore) in zip(a, b) {
        asum += ascore > bscore ? 1 : 0
        bsum += ascore < bscore ? 1 : 0
    }
    return [asum, bsum]
}
