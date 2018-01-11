//: Playground - noun: a place where people can play

import UIKit

/*:
 # 피보나치 수 _ #2747
 ## 문제
 피보나치 수는 0과 1로 시작한다. 0번째 피보나치 수는 0이고, 1번째 피보나치 수는 1이다. 그 다음 2번째 부터는 바로 앞 두 피보나치 수의 합이 된다.
 
 이를 식으로 써보면 Fn = Fn-1 + Fn-2 (n>=2)가 된다.
 
 n=17일때 까지 피보나치 수를 써보면 다음과 같다.
 
 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597
 
 n이 주어졌을 때, n번째 피보나치 수를 구하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 10
 
 ### output
 55
 */
func getFibonacciNumber(of n:Int) -> Int {
    guard n > 0 else {return 0}
    
    if n == 1 {
        return 1
    } else {
        return getFibonacciNumber(of: n-1) + getFibonacciNumber(of: n-2)
    }
}

//getFibonacciNumber(of: 30)

/* 두호님 Tip.
 상기와 같이 재귀로 하면 2^n 만큼의 시간이 걸린다. 30번쨰 피보나치를 구할 경우 10억번 이상 돌게 된다...
 이문제를 해결할 수 있는 방법을 memorization 이라고 합니다.
 */
var resultDic:[Int:Int] = [1:1, 2:1]

func memorizationFibonacciNumber(of n:Int) -> Int {
    guard n > 0 else {return 0}
    
    if let value = resultDic[n] {
        return value
    } else {
        let value = memorizationFibonacciNumber(of: n-1) + memorizationFibonacciNumber(of: n-2)
        resultDic[n] = value
        return value
    }
}

memorizationFibonacciNumber(of: 30)

func fibonacciNumber(of n:Int) {
    
    guard n > 1 else {print("1"); return}
    var fArray:[Int] = [0,1]
    
    for i in 2...n {
        fArray.append(fArray[i-1] + fArray[i-2])
    }
    print(fArray.last!)
}

fibonacciNumber(of: 30)






