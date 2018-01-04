//: Playground - noun: a place where people can play

import UIKit


/*:
 # 별찍기 - 3 (#2440)
 ## 문제
 첫째 줄에는 별 N개, 둘째 줄에는 별 N-1개, ..., N번째 줄에는 별 1개를 찍는 문제
 
 ## 예
 ### input
 5
 
 ### output
 \*****
 
 \****
 
 \***
 
 \**
 
 \*
 
 */
func printStarReverse(_ floor:Int) {
    var starString:String = "*"
    var resultArray:[String] = [starString]

    for index in 1...floor - 1 {
        starString += "*"
        resultArray.append(starString)
    }

//    for stars in resultArray.sorted(by: >) { //두호님 Tip. sorted는 사전적의미로 오름/내림 차순 정렬이므로 reverse가 더 적절
//        print(stars)
//    }

    //.sorted는 index 요소 하나하나를 각각의 다른 index와 다 비교해가면서 정렬하게 된다. 당연히 리소스 소요량이 많을 것이다.
    //.reverse는 단순히 자리를 반대로 뒤집는 것이므로 .sorted 보다 빠르고 리소스 소모가 적을 것이다.
    //지금과 같은 경우는 단순히 순서만 뒤집는 것이기 때문에 굳이 sorted(by:)를 사용할 필요가 없다.
    for stars in resultArray.reversed() {
        print(stars)
    }
}

printStarReverse(5)



