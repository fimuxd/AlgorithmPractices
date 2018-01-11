//: Playground - noun: a place where people can play

import UIKit

/*:
 # 괄호 (#9012)
 ## 문제
 괄호 문자열(Parenthesis String, PS)은 두 개의 괄호 기호인 ‘(’ 와 ‘)’ 만으로 구성되어 있는 문자열이다. 그 중에서 괄호의 모양이 바르게 구성된 문자열을 올바른 괄호 문자열(Valid PS, VPS)이라고 부른다. 한 쌍의 괄호 기호로 된 “( )” 문자열은 기본 VPS 이라고 부른다. 만일 x 가 VPS 라면 이것을 하나의 괄호에 넣은 새로운 문자열 “(x)”도 VPS 가 된다. 그리고 두 VPS x 와 y를 접합(concatenation)시킨 새로운 문자열 xy도 VPS 가 된다. 예를 들어 “(())()”와 “((()))” 는 VPS 이지만 “(()(”, “(())()))” , 그리고 “(()” 는 모두 VPS 가 아닌 문자열이다.
 
 여러분은 입력으로 주어진 괄호 문자열이 VPS 인지 아닌지를 판단해서 그 결과를 YES 와 NO 로 나타내어야 한다.
 
 ## 예
 ### input
 (())())
 
 (((()())()
 
 (()())((()))
 
 ((()()(()))(((())))()
 
 ()()()()(()()())()
 
 (()((())()(
 
 ### output
 NO
 
 NO
 
 YES
 
 NO
 
 YES
 NO
 */
// ( = 1 ) = -1 이라고 하고, 0 이라고 풀어보자

func isBracket(_ input:String) -> String {
    guard !input.isEmpty || input.count%2 == 0 else { return "NO" } // 홀수거나 스트링이 비어있으면 당연히 괄호가 아닐 것이므로 No
    guard Array(input).first! == "(" || Array(input).last! == ")" else { return "NO" }// 시작부터 닫히는 괄호 또는, 마지막에 열리는 괄호는 온전하지 않으므로 No
    
    var currentSum:Int = 0
    
    for i in 0..<input.count {
        if Array(input)[i] == "(" {
            currentSum += 1
        } else {
            currentSum -= 1
        }
        
        if currentSum < 0 {
            return "NO"
        }
    }
    
    if currentSum == 0 {
        return "YES"
    } else {
        return "NO"
    }
}

isBracket("(())())")
isBracket("(((()())()")
isBracket("(()())((()))")
isBracket("((()()(()))(((())))()")
isBracket("()()()()(()()())()")
isBracket("(()((())()()")
