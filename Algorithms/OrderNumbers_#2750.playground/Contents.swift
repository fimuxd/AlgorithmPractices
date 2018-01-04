//: Playground - noun: a place where people can play

import UIKit

/*:
 # 수정렬하기 (#2750)
 ## 문제
 N개의 수가 주어졌을 때, 이를 오름차순으로 정렬하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 5 5 2 3 4 1
 
 ### output
 1 2 3 4 5
 */

func orderNumbers(_ input:[Int]) {
    let removeDuplicatedNumbers:Set<Int> = Set(input)
    let orderedArray:[Int] = removeDuplicatedNumbers.sorted()
    
    for i in orderedArray {
        print(i)
    }
}

orderNumbers([5,5,2,3,4,1])
