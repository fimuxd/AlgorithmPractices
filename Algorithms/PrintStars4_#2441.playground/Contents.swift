//: Playground - noun: a place where people can play

import UIKit

/*
 # 별찍기 - 4 (#2441)
 ## 문제
 첫째 줄에는 별 N개, 둘째 줄에는 별 N-1개, ..., N번째 줄에는 별 1개를 찍는 문제
 하지만, 오른쪽을 기준으로 정렬한 별 (예제 참고)을 출력하시오.
 
 ## 예
 ### input
 5
 
 ### output
 *****
  ****
   ***
    **
     *
 
 */

func printStarToRightReverse(_ floor:Int) {
    var blankCount:String = " "
    var starString:String = "*"
    var tempBlankArray:[String] = [blankCount]
    var tempStarArray:[String] = [starString]

    for _ in 1...floor - 1 {
        blankCount += " "
        starString += "*"
        tempBlankArray.append(blankCount)
        tempStarArray.append(starString)
    }

    for index in 0..<floor {
        print("\(tempBlankArray.sorted(by: >)[floor - index - 1] + tempStarArray.sorted(by: >)[index])") //TODO:- 두호님 Tip. reverse로 변경
    }
}

printStarToRightReverse(5)

