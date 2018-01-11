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

func removeParentheses(input:String) -> [String] {
    
}


//func isParentheses(input:String) -> Bool {
//    guard input.count%2 == 0 else {return false}
//
//    let realParenthese:String = "()"
//    var inputCharacter = Array(input).map { (character) -> String in
//        String(character)
//    }
//
//
//    for i in 1..<inputCharacter.count-1 {
//        print(i)
//        print("돌기젼: \(inputCharacter)")
//        if inputCharacter[i] + inputCharacter[i+1] == realParenthese{
//            inputCharacter.removeSubrange(Range<Int>.init(uncheckedBounds: (lower: i, upper: i+2)))
//            print("지운후: \(inputCharacter)")
//        }
//    }
//
//    if inputCharacter.count == 0 {
//        return true
//    }
//    return false
//}

//isParentheses(input: "(())())")
//isParentheses(input: "(((()())()")
isParentheses(input: "(()())((()))")
//isParentheses(input: "((()()(()))(((())))()")
//isParentheses(input: "()()()()(()()())()")
//isParentheses(input: "(()((())()(")

//var array:[Int] = [7,6,5,4,3,2,1,0]
//let test = array.removeSubrange(Range<Int>.init(uncheckedBounds: (lower: 0, upper: 2))

//print(array)

//index 8이랑 9를 지우려면?
//예를들어 index 0이랑 1을 지우려면 >. 0, 2