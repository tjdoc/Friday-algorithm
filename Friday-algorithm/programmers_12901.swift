//
//  programmers_12901.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/13.
//
//  https://programmers.co.kr/learn/courses/30/lessons/12901

import Foundation

// from stackoverflow
func getDayOfWeek(today:String) -> String {
    let weekdays = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    let formatter  = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    guard let todayDate = formatter.date(from: today) else { return "ERROR" }
    let myCalendar = Calendar(identifier: .gregorian)
    let weekDay = myCalendar.component(.weekday, from: todayDate)
    return weekdays[weekDay-1] // weekDay uses 1 based index
}

func solution12901_general(_ a:Int, _ b:Int) -> String {
    let month = a < 10 ? "0"+String(a) : String(a)
    let day   = b < 10 ? "0"+String(b) : String(b)
    return getDayOfWeek(today:"2016-\(month)-\(day)")
}

// this works for 2016 only
func solution12901_2016(_ month:Int, _ day:Int) -> String {
    let weekdays = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    let monthDays = [31,29,31,30,31,30,31,31,30,31,30,31]  // 2016 윤년
    let startIdx = 5 // 2016-01-01 is Friday
    let dayofYear2016 = monthDays[..<(month-1)].reduce(0,+) + day - 1
    return weekdays[(dayofYear2016+startIdx)%7]
}

func test12901() -> Bool {
//    print(solution12901_general(5,24))
//    print(solution12901_2016(5,24))
//    print(solution12901_2016(1,1))
    return solution12901_2016(5,24) == "TUE"
}
