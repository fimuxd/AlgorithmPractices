//: Playground - noun: a place where people can play

import UIKit

/*:
 # 소수찾기 (#1978)
 ## 문제
 주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 1 3 5 7
 
 ### output
 3
 
 */

func numberOfPrime(in numbers:[Int]) {
    var devidedNumbers = numbers.map { (number) -> [Int] in
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
    
    print(decimalNumbers.count)
}

numberOfPrime(in: [1,3,5,7])

