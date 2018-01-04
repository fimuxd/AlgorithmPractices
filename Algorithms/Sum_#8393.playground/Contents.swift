//: Playground - noun: a place where people can play

import UIKit

/*:
 # 합 (#8393)
 ## 문제
 n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 3
 ### output
 6
 */

func totalSumFromOne(to input:Int) {
    var resultNumber:Int = 0
    for number in 1...input {
        resultNumber += number
    }

    print(resultNumber)
}

totalSumFromOne(to: 3)

//TODO: .reduce를 사용해서 풀어보자

