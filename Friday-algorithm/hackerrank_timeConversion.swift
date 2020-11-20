//
//  hackerrank_timeConversion.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/20.
//

import Foundation

func timeConversion(s: String) -> String {
    let isPM = s.contains("PM")
    var timeArr = s.replacingOccurrences(of: "PM", with: "")
        .replacingOccurrences(of: "AM", with: "")
        .split(separator: ":")
        .compactMap { Int($0) }
    timeArr[0] %= 12
    timeArr[0] += isPM ? 12 : 0
    return String(format: "%02d:%02d:%02d", timeArr[0], timeArr[1], timeArr[2])
}
