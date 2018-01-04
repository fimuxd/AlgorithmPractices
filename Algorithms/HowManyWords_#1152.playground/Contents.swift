//: Playground - noun: a place where people can play

import UIKit

/*:
 # 단어의 개수 (#1152)
 ## 문제
 영어 대소문자와 띄어쓰기만으로 이루어진 문장이 주어진다. 이 문장에는 몇 개의 단어가 있을까? 이를 구하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 The Curious Case of Benjamin Button
 
 ### output
 6
 */

func getNumberOfWords(_ input:String) {
    let components = input.components(separatedBy: .whitespaces)
    let words = components.filter { !$0.isEmpty }
    
    print(words.count)
}

getNumberOfWords("The Curious Case of Benjamin Button")

