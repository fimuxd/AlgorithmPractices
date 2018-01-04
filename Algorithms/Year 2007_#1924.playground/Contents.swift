//: Playground - noun: a place where people can play

import UIKit

/*:
 # 2007년 (#1924)
 ## 문제
 오늘은 2007년 1월 1일 월요일이다. 그렇다면 2007년 x월 y일은 무슨 요일일까? 이를 알아내는 프로그램을 작성하시오.
 
 ## 예
 ### input
 1 1
 ### output
 MON
 */


func dayStringOf(month:Int, day:Int) {
    let daysOfMonths:[Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let weekDaysString:[String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    var summaryDays:Int = 0

    for days in daysOfMonths.prefix(month-1) {
        summaryDays += days
    }

    summaryDays += day

    print(weekDaysString[summaryDays%7])
}

dayStringOf(month: 3, day: 1)

