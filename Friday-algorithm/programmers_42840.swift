//
//  programmers_42840.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/13.
//
//  https://programmers.co.kr/learn/courses/30/lessons/42840

import Foundation

func supojaAnsScore(answers:[Int], method:Int) -> Int {
    let counts = answers.count
    var score = 0
    switch method {
    case 1:
        for ii in 0..<counts {
            score += answers[ii] == ii%5+1 ? 1 : 0
        }
        return score
    case 2:
        let choice = [1,3,4,5]
        for ii in 0..<counts {
            switch ii {
            case ii where ii%2 == 0:
                score += answers[ii] == 2 ? 1 : 0
            case ii where ii%2 == 1:
                score += answers[ii] == choice[((ii-1)/2)%4] ? 1 : 0
            default:
                break
            }
        }
        return score
    case 3:
        let choice = [3,3,1,1,2,2,4,4,5,5]
        for ii in 0..<counts {
            score += answers[ii] == choice[ii%choice.count] ? 1 : 0
        }
        return score
    default:
        return -1
    }
}

func solution42840(_ answers:[Int]) -> [Int] {
    var scoreArr = [Int]()
    for supoja in 1...3 {
        scoreArr.append(supojaAnsScore(answers: answers, method: supoja))
    }
    let maxScore = scoreArr.max()
    var out = [Int]()
    for ii in 0..<3 {
        if scoreArr[ii] == maxScore {
            out.append(ii+1)
        }
    }
    return out.sorted()
}

func test42840() -> Bool {
    let testArr = [[[1,2,3,4,5], [1]],
                   [[1,3,2,4,2], [1,2,3]]]
    for test in testArr {
        guard solution42840(test[0]) == test[1] else {
            return false
        }
    }
    return true
}
