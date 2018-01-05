//: Playground - noun: a place where people can play

import UIKit

/*:
 # 소수구하기 (#1929)
 ## 문제
 M이상 N이하의 소수를 모두 출력하는 프로그램을 작성하시오.
 
 ## 예 
 ### input
 3 16
 
 ### output
 3
 
 5
 
 7
 
 11
 
 13
 
 */
func getSpecificDecimals(between a:Int, and b:Int) {
    if a > b {
        print("작은 수부터 차례로 입력해주세요.")
        return
    }
    
    var inputNumberArray:[Int] = []
    
    for numbers in a...b {
        inputNumberArray.append(numbers)
    }
    
    let devidedNumbers = inputNumberArray.map { (number) -> [Int] in
        var decimals:[Int] = []
        for index in 1...number {
            if number%index == 0 {
                decimals.append(index)
            }
        }
        return decimals
    }
    
    var decimalNumbers = devidedNumbers.filter { (numbers) -> Bool in
        return numbers.count == 2
    }
    
    for index in 0..<decimalNumbers.count {
        print(decimalNumbers[index][1])
    }
}

//getSpecificDecimals(between: 3, and: 16)

/* TODO:- 두호님 Tip. 에라토스테네스의 체 원리 (n/2 + n/3 + ... + n/n = n log n) 를 이용해보세요.
            숫자 하나하나에 대해서 소수인지를 판별하는 방식은 너무 많은 반복과 소모가 있다.
            역으로 약수가 확실한 아이들 (확실히 소수가 아닌 놈들)을 지워나가는 방식으로 하면 n log n 만큼 반복하므로 훨씬 줄어겠죠?
            예제의 경우 범위가 적으니 가능합니다만, 두 수의 범위가 백만개라면 어떨까요?
            보영님 방식대로하면 백만 * 백만으로.. 아마 하루가 지나도 컴퓨터가 돌고 있을 겁니다.
 */

//에라토스테네스의 체에 대한 위키 > https://ko.wikipedia.org/wiki/에라토스테네스의_체

var isPrime:[Bool] = []

func deductDivisorFromIsPrimeArrayBetween(a:Int, b:Int) {
    for number in (a...b) {
        if number%
        isPrime.append(true)
        
    }
    
    for number in 1...1000 { //1,000으로 설정한 이유: 1,000^2 = 1,000,000 (문제에서 100만을 제시했음)
        
    }
}


