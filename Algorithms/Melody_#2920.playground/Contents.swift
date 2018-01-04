//: Playground - noun: a place where people can play

import UIKit

/*:
 # 음계 (#2920)
 ## 문제
 다장조는 c d e f g a b C, 총 8개 음으로 이루어져있다. 이 문제에서 8개 음은 다음과 같이 숫자로 바꾸어 표현한다. c는 1로, d는 2로, ..., C를 8로 바꾼다.
 
 1부터 8까지 차례대로 연주한다면 ascending, 8부터 1까지 차례대로 연주한다면 descending, 둘 다 아니라면 mixed 이다.
 
 연주한 순서가 주어졌을 때, 이것이 ascending인지, descending인지, 아니면 mixed인지 판별하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 1 2 3 4 5 6 7 8
 
 ### output
 ascending
 */

//보영: 사실 이 문제는 각 경우에 대해서 해당 문구를 출력하도록 해버리면 되는... 이상한 문제..
func checkMelody(for melodyNumbers:[Int]){
    var ascendingCount:Int = 0
    var decendingCount:Int = 0
    for index in 1...8 {
        if melodyNumbers[index - 1] == index {
            ascendingCount += 1
        }else if melodyNumbers[melodyNumbers.count - index] == index {
            decendingCount += 1
        }
    }
    
    if ascendingCount == 8 {
        print("ascending")
    }else if decendingCount == 8 {
        print("decending")
    }else{
        print("mixed")
    }
}

checkMelody(for: [1,2,3,4,5,6,7,8])
checkMelody(for: [8,7,6,5,4,3,2,1])
checkMelody(for: [1,2,3,5,2,4,2,1])

