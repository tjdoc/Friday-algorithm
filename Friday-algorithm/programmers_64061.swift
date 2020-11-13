//
//  programmers_64061.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/13.
//
//  https://programmers.co.kr/learn/courses/30/lessons/64061

import Foundation

func solution64061(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boardCopy = board
    var basket = [Int]()
    var numDisappeared = 0
    
    for move in moves {
        let col = move - 1
        if let row = boardCopy.firstIndex(where: { $0[...][col] != 0 }) {
            basket.append(boardCopy[row][col])
            boardCopy[row][col] = 0
            if basket.count >= 2 && basket[basket.count - 1] == basket[basket.count - 2] {
                numDisappeared += 2
                _ = basket.popLast()
                _ = basket.popLast()
            }
        }
    }
    return numDisappeared
}

func test64061() -> Bool {
    let out = solution64061([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]],
                   [1,5,3,5,1,2,1,4])
    return out == 4 ? true : false
}
