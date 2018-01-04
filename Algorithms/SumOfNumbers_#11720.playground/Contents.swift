//: Playground - noun: a place where people can play

import UIKit

/*:
 # 숫자의 합 (#11720)
 ## 문제
 N개의 숫자가 공백 없이 쓰여있다. 이 숫자를 모두 합해서 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 54321
 ### output
 15
 */
func summaryOfEachNumbers(of input:Int, _ count:Int) {
    var inputNumber:Int = input
    var tempArray:[Int] = []
    var resultNumber:Int = 0

    while inputNumber > 0 {
        tempArray.insert(inputNumber%10, at: 0)
        inputNumber = inputNumber/10
    }

    for index in 0..<count {
        resultNumber += tempArray[index]
    }

    print(resultNumber)
}

summaryOfEachNumbers(of: 54321, 5)


