//: Playground - noun: a place where people can play

import UIKit

/*
 # 별찍기 - 2 (#2439)
 ## 문제
 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
 하지만, 오른쪽을 기준으로 정렬한 별 (예제 참고)을 출력하시오.
 
 ## 예
 ### input:
 5
 
 ### output:
     *
    **
   ***
  ****
 *****
 */

func printStarToRight(_ floor: Int) {
    var blankCount:String = " "
    var starString:String = "*"
    var tempBlankArray:[String] = [blankCount]
    var tempStarArray:[String] = [starString]

    for index in 1...floor - 1 {
        blankCount += " "
        starString += "*"
        tempBlankArray.append(blankCount)
        tempStarArray.append(starString)
    }

    for index in 0..<floor {
        print("\(tempBlankArray[floor - index - 1] + tempStarArray[index])")
    }
}

printStarToRight(5)

//TODO: 두호님 Tip. for-in 내부에 for-in 한번 더 넣는 방식으로 구현해 볼 것

