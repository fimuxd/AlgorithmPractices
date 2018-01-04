//: Playground - noun: a place where people can play

import UIKit

/*:
 # 더하기 사이클 (#1110)
 ## 문제
 0보다 크거나 같고, 99보다 작거나 같은 정수가 주어질 때 다음과 같은 연산을 할 수 있다. 먼저 주어진 수가 10보다 작다면 앞에 0을 붙여 두 자리 수로 만들고, 각 자리의 숫자를 더한다. 그 다음, 주어진 수의 가장 오른쪽 자리 숫자와 앞에서 구한 합의 가장 오른쪽 자리 숫자를 이어 붙이면 새로운 수를 만들 수 있다. 다음 예를 보자.
 
 26부터 시작한다. 2+6 = 8이다. 새로운 숫자는 68이다. 6+8 = 14이다. 새로운 숫자는 84이다. 8+4 = 12이다. 새로운 숫자는 42이다. 4+2 = 6이다. 새로운 숫자는 26이다.
 
 위의 예는 4번만에 원래 숫자로 돌아올 수 있다. 따라서 26의 사이클의 길이는 4이다.
 
 N이 주어졌을 때, N의 사이클의 길이를 구하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 26
 
 ### output
 4
 
 */

//FIXME:- 못 풀었습니다.
func plusCycle(of inputNumber:Int) {
    var input:Int = inputNumber
    var numbers:[Int] = []
    
    if inputNumber > 99 {
        print("0부터 99사이의 값을 입력하세요.")
        return
    }else if numbers.count == 0 {
        numbers.append(inputNumber)
    }else if inputNumber == numbers[0] && numbers.count != 1 {
        print(numbers.count)
        return
    }
    
    while input > 0 {
        numbers.insert(inputNumber/10, at: 1)
        numbers.insert(inputNumber%10, at: 2)
        input = input/10
    }
    
    var summaryInput:Int = numbers[1] + numbers[2]
    
    while summaryInput > 0 {
        numbers.insert(summaryInput/10, at: 3)
        numbers.insert(summaryInput%10, at: 4)
        summaryInput = summaryInput/10
    }
    
    var newNumber:Int = (numbers[2] * 10) + (numbers[4])
    plusCycle(of: newNumber)
    print(newNumber)
    
}

//plusCycle(of: 26)
/* TODO:- 두호님 Tip. 함수두개와 재귀적으로 풀어보기
        함수 여러개 > boolean > !() 인것을   전환
 */
