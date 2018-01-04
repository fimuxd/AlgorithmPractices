//: Playground - noun: a place where people can play

import UIKit

/*:
 # 기찍 N (#2742)
 ## 문제
 자연수 N이 주어졌을 때, N부터 1까지 한 줄에 하나씩 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input:
 5
 ### output:
 5 4 3 2 1
 */

func nTnirp(_ inputNumber:Int) {
    var result:Int = inputNumber
    for number in 1...inputNumber {
        print(result)
        result -= 1
    }
}

//nTnirp(5)

//두호님 Tip. variable 따로 선언 말고 input - number 방식으로 변경
//아래와 같이 개선함
func reversePrintN(_ input:Int) {
    for number in (1...input).reversed() {
        print(number)
    }
}

reversePrintN(5)

