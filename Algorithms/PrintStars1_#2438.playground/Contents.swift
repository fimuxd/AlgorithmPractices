//: Playground - noun: a place where people can play

import UIKit

/*:
 # 별찍기 - 1 (#2438)
 ## 문제
 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
 ## 예
 ### input:
 5
 
 ### output:
 \*
 
 \**
 
 \***
 
 \****
 
 \*****
 */
 
func printStar(_ floor: Int) {
    var starString:String = "*"
    for number in 1...floor {
        print(starString)
        starString += "*"
    }
}

printStar(5)


