//: Playground - noun: a place where people can play

import UIKit

/*:
 # X보다 작은 수 (#10871)
 ## 문제
 정수 N개로 이루어진 수열 A와 정수 X가 주어진다. 이 때, A에서 X보다 작은 수를 모두 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 1 10 4 9 2 3 8 5 7 6
 
 ### output
 1 4 2 3
 */

func printSmallerThan(input:Int, comparebleArray:[Int]) {
    var resultArray:[Int] = []
    
    for number in comparebleArray {
        if number < input {
            resultArray.append(number)
        }
    }
    
    print(resultArray)
}

printSmallerThan(input: 5, comparebleArray: [1,10,4,9,2,3,8,5,7,6])

//TODO: 두호님 Tip. filter를 이용하는 방법

