//: Playground - noun: a place where people can play

import UIKit


/*:
 # 스택 수열 (#1874)
 ## 문제
 스택 (stack)은 기본적인 자료구조 중 하나로, 컴퓨터 프로그램을 작성할 때 자주 이용되는 개념이다. 스택은 자료를 넣는 (push) 입구와 자료를 뽑는 (pop) 입구가 같아 제일 먼저 들어간 자료가 제일 나중에 나오는 (FILO, first in last out) 특성을 가지고 있다.
 
 1부터 n까지의 수를 스택에 넣었다가 뽑아 늘어놓음으로써, 하나의 수열을 만들 수 있다. 이 때, 스택에 push하는 순서는 반드시 오름차순을 지키도록 한다고 하자. 임의의 수열이 주어졌을 때 스택을 이용해 그 수열을 만들 수 있는지 없는지, 있다면 어떤 순서로 push와 pop 연산을 수행해야 하는지를 알아낼 수 있다. 이를 계산하는 프로그램을 작성하라.
 
 ## 예
 ### input
 8
 
 4
 
 3
 
 6
 
 8
 
 7
 
 5
 
 2
 
 1
 ### output
 \+
 
 \+
 
 \+
 
 \+
 
 \-
 
 \-
 
 \+
 
 \+
 
 \-
 
 \+
 
 \+
 
 \-
 
 \-
 
 \-
 
 \-
 
 \-
 */
func makeStack(_ count:Int) -> [Int] {
    return Array(1...count)
}

func showMeTheProcessToMake(theArray:[Int]) {
    var standardArray:[Int] = theArray
    var stack:[Int] = []
    var resultArray:[Int] = []
    var number:Int = 1
    
    while !standardArray.isEmpty {
        print("""
            standardArray: \(standardArray)
            stack: \(stack)
            resultArray: \(resultArray)
            number: \(number)
            """)
        if stack.last != standardArray.first {
            stack.append(number)
            print("+")
            number += 1
        } else {
            resultArray.append(standardArray.first!)
            stack.removeLast()
            standardArray.removeFirst()
            print("-")
        }
    }
    
    print(resultArray)
    if theArray == resultArray {
        print("스택수열을 만들 수 있습니다.")
    } else {
        print("스택수열을 만들 수 없습니다.")
    }
}

let request:[Int] = [4,3,6,8,7,5,2,1]
showMeTheProcessToMake(theArray: request)

