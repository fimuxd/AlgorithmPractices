//: Playground - noun: a place where people can play

import UIKit

/*:
 # 상수 (#2908)
 ## 문제
 상근이의 동생 상수는 수학을 정말 못한다. 상수는 숫자를 읽는데 문제가 있다. 이렇게 수학을 못하는 상수를 위해서 상근이는 수의 크기를 비교하는 문제를 내주었다. 상근이는 세 자리 숫자 두 개를 칠판에 써주었다. 그 다음에 크기가 큰 수를 말해보라고 했다.
 
 상수는 수를 다른사람과 다르게 거꾸로 읽는다. 예를 들어, 734과 893을 칠판에 적었다면, 상수는 이 수를 437과 398로 읽는다. 따라서, 상수는 두 수중 큰 수인 437을 큰 수라고 말할 것이다.
 
 두 수가 주어졌을 때, 상수의 대답을 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 734 893
 
 ### output
 437
 */
//예전 코드
func answerOfSangsoo(a:Int, b:Int) {
    var firstInput:Int = a
    var secondInput:Int = b
    var firstNumberArray:[Int] = []
    var secondNumberArray:[Int] = []
    var newFirstNumber = 0
    var newSecondNumber = 0
    var ten = 1
    
    while firstInput > 0 {
        firstNumberArray.insert(firstInput%10, at: 0)
        firstInput = firstInput/10
    }
    
    while secondInput > 0 {
        secondNumberArray.insert(secondInput%10, at: 0)
        secondInput = secondInput/10
    }
    
    for index in 0...firstNumberArray.count-1 {
        newFirstNumber += firstNumberArray[index] * ten
        ten *= 10
    }
    
    ten = 1
    
    for index in 0...secondNumberArray.count-1 {
        newSecondNumber += secondNumberArray[index] * ten
        ten *= 10
    }
    
    print(max(newFirstNumber, newSecondNumber))
}

//answerOfSangsoo(a: 734, b: 893)


//두호님 Tip. 뒤집는 함수 하나 만들어서 함수 기능 분리
func reverseNumber(_ input:Int) -> Int {
    return input/100 + input%10*100 + input%100 - input%10
}

func printSangSooAnser(a:Int, b:Int) {
    print(max(reverseNumber(a), reverseNumber(b)))
}

printSangSooAnser(a: 734, b: 893)



