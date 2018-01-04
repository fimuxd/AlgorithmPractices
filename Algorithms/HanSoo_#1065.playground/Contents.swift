//: Playground - noun: a place where people can play

import UIKit

/*:
 # 한수 (#1065)
 ## 문제
 어떤 양의 정수 X의 자리수가 등차수열을 이룬다면, 그 수를 한수라고 한다. 등차수열은 연속된 두 개의 수의 차이가 일정한 수열을 말한다. N이 주어졌을 때, 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 110
 ### output
 99
 */

func getNumberOfHanSoo(_ input:Int) -> Int {
    if input < 100 {
        return input
    }
    
    if input > 1000 {
        print("1000 이하의 값을 입력해주세요")
        return 0
    }
    
    var hanSooArray:[Int] = []
    
    for number in 100...input {
        var inputNumber:Int = number
        var numbers:[Int] = []
        
        while inputNumber > 0 {
            numbers.insert(inputNumber%10, at: 0)
            inputNumber = inputNumber/10
        }
        
        if (numbers[0] - numbers[1]) == (numbers[1] - numbers[2]) {
            hanSooArray.append(number)
        }
    }
    
    return (hanSooArray.count + 99) //Reason: 1 ~ 99 까지의 한자리수 및 두자리수는 모두 한수이다.
}


print(getNumberOfHanSoo(110))

