//: Playground - noun: a place where people can play

import UIKit

/*:
 # 숫자의 개수 (#2577)
 ## 문제
세 개의 자연수 A, B, C가 주어질 때 A×B×C를 계산한 결과에 0부터 9까지 각각의 숫자가 몇 번씩 쓰였는지를 구하는 프로그램을 작성하시오.

예를 들어 A = 150, B = 266, C = 427 이라면

A × B × C = 150 × 266 × 427 = 17037300 이 되고,

계산한 결과 17037300 에는 0이 3번, 1이 1번, 3이 2번, 7이 2번 쓰였다.
 
 ## 예
 ### input
 150 266 427
 
 ### output
 3

1

0

2

0

0

0

2

0

0
 */

func howManyNumbersWillBeUsed(a:Int, b:Int, c:Int) {
    var productNumber:Int = a * b * c
    var numbers:[Int] = []
    //    var tempNumbers:[Int] = []
    
    while productNumber > 0 {
        numbers.append(productNumber%10)
        productNumber = productNumber/10
    }
    
    for index in 0...9 {
        var tempNumbers = numbers.filter({ (number) -> Bool in
            return number == index
        })
        print(tempNumbers.count)
    }
}

howManyNumbersWillBeUsed(a: 150, b: 266, c: 427)

//TODO:- 두호님 Tip. 셀프넘버를 두호님이 제시한 방식과 비슷하게, 해당문제를 다시 풀어볼 것

