//: Playground - noun: a place where people can play

import UIKit

/*:
 # N 찍기 (#2741)
 
 ## 문제
 자연수 N이 주어졌을 때, 1부터 N까지 한 줄에 하나씩 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input:
 5
 
 ### output:
 1
 2
 3
 4
 5
*/
func printN(_ inputNumber:Int) {
    var result:Int = 1
    for number in 1...inputNumber {
        print(number)
        result += 1
    }
}
