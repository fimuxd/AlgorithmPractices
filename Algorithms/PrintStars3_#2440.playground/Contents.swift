//: Playground - noun: a place where people can play

import UIKit


/*
 # 별찍기 - 3 (#2440)
 ## 문제
 */
func printStarReverse(_ floor:Int) {
    var starString:String = "*"
    var resultArray:[String] = [starString]

    for index in 1...floor - 1 {
        starString += "*"
        resultArray.append(starString)
    }

    for stars in resultArray.reversed() { //두호님. sorted는 사전적의미로 오름/내림 차순 정렬이므로 reverse가 더 적절
        print(stars)
    }
}

//printStarReverse(5)

