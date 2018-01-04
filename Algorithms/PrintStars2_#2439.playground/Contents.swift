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

//printStarToRight(5)



//두호님 Tip. for-in 내부에 for-in 한번 더 넣는 방식으로 구현해 볼 것
/*
 그전에 이중 for-in 문이 어떻게 작동하는지 확인해보고자 아래와 같이 작성함
 결론: 첫번째 for문의 0번 index > 두번째 한바퀴(전체) > 첫번째 for문의 1번 index > 두번째 한바퀴(전체) ...
    즉, 첫번째 for 문은 index 개수만큼 돌지만, 두번째는 전체 사이클을 첫번째 for문의 index 개수만큼 돈다. (이렇게 해보니까 어떻게 보면 당연한 로직)
 */

func DoubleForTest(_ floor: Int) {
    for a in 0...floor {
        print("첫번째 \(a)")
        for b in 0...floor {
            print("두번째 \(b)")
        }
    }
}

//DoubleForTest(5)

//2중 for문으로 아래와 같이 풀어보았습니다.
func printStarToRight2(_ floors: Int) {
    var blank:String = ""
    var star:String = "*"
    for floor in (1...floors).reversed() {
        for _ in 1...floor {
            blank += " "
        }
        print(blank + star)
        star += "*"
        blank = ""
    }
}

printStarToRight2(5)
