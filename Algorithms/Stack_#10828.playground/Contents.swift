//: Playground - noun: a place where people can play

import UIKit

/*:
 # 스택 (#10828)
 ## 문제
 정수를 저장하는 스택을 구현한 다음, 입력으로 주어지는 명령을 처리하는 프로그램을 작성하시오.
 
 명령은 총 다섯 가지이다.
 
 * push X: 정수 X를 스택에 넣는 연산이다.
 * pop: 스택에서 가장 위에 있는 정수를 빼고, 그 수를 출력한다. 만약 스택에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 * size: 스택에 들어있는 정수의 개수를 출력한다.
 * empty: 스택이 비어있으면 1, 아니면 0을 출력한다.
 * top: 스택의 가장 위에 있는 정수를 출력한다. 만약 스택에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 
 ## 예
 ### input
 push 1
 
 push 2
 
 top
 
 size
 
 empty
 
 pop
 
 pop
 
 pop
 
 size
 
 empty
 
 pop
 
 push 3
 
 empty
 
 top
 
 ### output
 2
 
 2

 0
 
 2
 
 1
 
 -1
 
 0
 
 1
 
 -1
 
 0
 
 3
 
 */

var digits:[Int] = []

func enterThe(order:String, input:Int?) {
    switch order {
    case "push":
        guard let number = input else { return }
        digits.append(number)
    case "pop":
        if digits.isEmpty {
            print("-1")
        } else {
            print("\(digits.popLast()!)")
        }
    case "size":
        print("\(digits.count)")
    case "empty":
        if digits.isEmpty {
            print("1")
        }else{
            print("0")
        }
    case "top":
        if digits.isEmpty {
            print("-1")
        } else {
            print("\(digits.last!)")
        }
    default:
        print("올바를 명령어를 넣어주세요.")
    }
}

enterThe(order: "push", input: 1)
enterThe(order: "push", input: 2)
enterThe(order: "top", input: nil)
enterThe(order: "size", input: nil)
enterThe(order: "empty", input: nil)
enterThe(order: "pop", input: nil)
enterThe(order: "pop", input: nil)
enterThe(order: "pop", input: nil)
enterThe(order: "size", input: nil)
enterThe(order: "empty", input: nil)
enterThe(order: "pop", input: nil)
enterThe(order: "push", input: 3)
enterThe(order: "empty", input: nil)
enterThe(order: "top", input: nil)

