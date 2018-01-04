//: Playground - noun: a place where people can play

import UIKit

/*:
 # 시험 성적 (#9498)
 ## 문제
 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 100
 
 ### output
 A
 */

func tellMeMyGrade(_ score:Int) {
    guard score < 101 && score > 0 else {print("점수는 0 ~ 100점 입니다. "); return}
    //두호님 Tip: 또는 range를 둘 수도 있다. (1...100).contains(score)
    
    // 보영: 기존 코드
    //    if score > 100 {
    //        print("점수는 100점을 넘을 수 없습니다.")
    //        return
    //    }
    //
    
    if score > 89 {
        print("A")
    }else if score > 79 {
        print("B")
    }else if score > 69 {
        print("C")
    }else if score > 59 {
        print("D")
    }else{
        print("F")
    }
}

tellMeMyGrade(100)

