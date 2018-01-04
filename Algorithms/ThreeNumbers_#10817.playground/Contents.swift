//: Playground - noun: a place where people can play

import UIKit

/*:
 # 세 수 (#10817)
 ## 문제
 세 정수 A, B, C가 주어진다. 이 때, 두 번째로 큰 정수를 출력하는 프로그램을 작성하시오.
 
 ## 예제
 ### input
 20 30 10
 
 ### output
 20
 
 */

func tellMeSecondLargestInt(a:Int, b:Int, c:Int) {
    if a > 100 || b > 100 || c > 100 {
        print("1부터 100까지의 수를 입력하세요.")
    }
    
    print([a,b,c].sorted()[1])
    
    
    //    if min(a,b) > min(a,c) {
    //        print(a)
    //    }else if min(b,c) > min(a,b) {
    //        print(b)
    //    }
    //
}

tellMeSecondLargestInt(a: 30, b: 30, c: 10)

//TODO: 두호님 Tip. a랑 b를 먼저 비교하고, 그 결과를 c와 비교하는 방식으로 풀어볼것

