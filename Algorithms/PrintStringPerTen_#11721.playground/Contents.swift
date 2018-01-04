//: Playground - noun: a place where people can play

import UIKit

/*:
 # 열 개씩 끊어 출력하기 (#11721)
 ## 문제
 알파벳 소문자와 대문자로만 이루어진 길이가 N인 단어가 주어진다.
 
 한 줄에 10글자씩 끊어서 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 OneTwoThreeFourFiveSixSevenEightNineTen
 
 ### output
 OneTwoThre
 
 eFourFiveS
 
 ixSevenEig
 
 htNineTen
 
 */
//보영: 기존 코드 (짜는데 실패함)
func printStringPerTen(_ input:String) {
//    if input.count < 1 {
//        print("최소 한글자 이상 입력하세요.")
//    }
//
    var inputString = input
    var inputStringCount = input.count
    var stringByTenCharacters = ""
    var tempArray:[String.SubSequence] = []

    while inputStringCount > 0 {
        tempArray.insert(inputString.prefix(10), at: 0)
        inputStringCount = inputStringCount/10
//        inputString.removeSubrange(Range<String.Index>(inputString.startIndex ..< inputString.))
    }
    print(tempArray)
}

//두호님 Tip을 통한 개선
func split10(input:String) {
    if let prefixStringIndex = input.index(input.startIndex, offsetBy: 10, limitedBy: input.endIndex) {
        print(input[..<prefixStringIndex])
        split10(input: String(input[prefixStringIndex...]))
    }else{
        print(input)
    }
}

split10(input: "OneTwoThreeFourFiveSixSevenEightNineTen")


