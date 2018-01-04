//: Playground - noun: a place where people can play

import UIKit

/*:
 # 골드바흐의 추측 (#9020)
 ## 문제
 1보다 큰 자연수 중에서  1과 자기 자신을 제외한 약수가 없는 자연수를 소수라고 한다. 예를 들어, 5는 1과 5를 제외한 약수가 없기 때문에 소수이다. 하지만, 6은 6 = 2 × 3 이기 때문에 소수가 아니다.
 
 골드바흐의 추측은 유명한 정수론의 미해결 문제로, 2보다 큰 모든 짝수는 두 소수의 합으로 나타낼 수 있다는 것이다. 이러한 숫자를 골드바흐 숫자라고 한다. 또, 짝수를 두 소수의 합으로 나타내는 표현을 그 숫자의 골드바흐 파티션이라고 한다. 예를 들면, 4 = 2 + 2, 6 = 3 + 3, 8 = 3 + 5, 10 = 5 + 5, 12 = 5 + 7, 14 = 3 + 11, 14 = 7 + 7이다. 10000보다 작은 모든 짝수 n에 대한 골드바흐 파티션은 존재한다.
 
 2보다 큰 짝수 n이 주어졌을 때, n의 골드바흐 파티션을 출력하는 프로그램을 작성하시오. 만약 가능한 n의 골드바흐 파티션이 여러가지인 경우에는 두 소수의 차이가 가장 작은 것을 출력한다.
 
 ## 예
 ### input
 16
 
 ### output
 5 11
 
 */

func partitionOfGoldBach(_ number:Int) {
    if number < 4 || number > 9999 || number%2 != 0 {
        print("2보다 큰 짝수만 입력하세요,")
    }
    
    var firstNumbers:[Int] = []
    
    for number in 1..<number {
        firstNumbers.append(number)
    }
    
    let devidedNumbers = firstNumbers.map { (number) -> [Int] in
        var decimals:[Int] = []
        for index in 1...number {
            if number%index == 0 {
                decimals.append(index)
            }
        }
        return decimals
    }
    
    let tempDecimalNumbers = devidedNumbers.filter { (numbers) -> Bool in
        return numbers.count == 2
    }
    
    let decimalNumbers = tempDecimalNumbers.map { (array) -> Int in
        return array[1]
    }
    
    var tempResultArray:[[Int]] = []
    for i in 0..<tempDecimalNumbers.count {
        if decimalNumbers.contains(number - decimalNumbers[i]) {
            tempResultArray.append([number - decimalNumbers[i], decimalNumbers[i]])
        }
    }
    
    var distancesArray = tempResultArray.map { (array) -> (key:[Int], value:Int) in
        let distance = max(array[0], array[1]) - min(array[0], array[1])
        return (key:array, value:distance)
    }
    
    let resultArray = distancesArray.sorted { (tuple1, tuple2) -> Bool in
        return tuple2.value > tuple1.value
    }
    
    print(resultArray[0].key)
}

partitionOfGoldBach(16)

//TODO:- 두호님 Tip. 이 것 역시 앞의 소수문제들을 응용해서 간단히해보세요.
