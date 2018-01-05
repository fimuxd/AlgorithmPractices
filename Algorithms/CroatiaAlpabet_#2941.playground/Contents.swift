//: Playground - noun: a place where people can play

import UIKit

/*:
 # 크로아티아 알파벳 (#2941)
 ## 문제
 예전에는 운영체제에서 크로아티아 알파벳을 입력할 수가 없었다. 따라서, 다음과 같이 크로아티아 알파벳을 다음과 같이 변경해서 입력했다.
 
 크로아티아 알파벳    변경

 č    c=
 
 ć    c-
 
 dž    dz=
 
 ñ    d-
 
 lj    lj
 
 nj    nj
 
 š    s=
 
 ž    z=
 
 예를 들어, ljes=njak은 크로아티아 알파벳 6개(lj, e, š, nj, a, k)로 이루어져 있다.
 
 단어가 주어졌을 때, 몇 개의 크로아티아 알파벳으로 이루어져 있는지 출력한다.

 ## 예
 ### input
 ljes=njak
 
 ### output
 6
 
 */

//FIXME:- 못 풀었습니다.
func howManyCroatiaAlphabet(input:String) {
    var croatiaKey:[String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    
}



/*
 두호님 Tip.
 이 문제에서 고려해야할 것이 어떤 것일까요?
 1. 글자의 배열을 하나씩 확인해나가야 합니다.
 2. 만약 croatiaKey중 하나라도 해당 문자열에 포함되어 있으면 카운트를 증가시키고 해당 문자는 지우면 어떨까요?
 3. .hasPrefix 라는 함수가 있습니다. .find라는 함수도 있어요
 4. 첫번째 문자에 croatiaKey가 아닌 문자가 들어있다면 역시 지우면 어떨까요?
 */

let croatiaKey:[String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

//문자열 자체가 croatiaKey가 있는지 확인한다
//func hasCroatiaKey(input:String) -> Bool {
//    for key in croatiaKey {
//        let prefix = input.index(input.startIndex, offsetBy: key.count, limitedBy: input.endIndex)
//        if input[..<prefix] == key {
//            return true
//        } else {
//            return false
//        }
//    }
//    for key in croatiaKey {
//        if croatiaKey.contains(String(input.prefix(upTo: key.endIndex))) {
//            return true
//        } else if {
//            return false
//        }
//    
//    return false
//}
//
//hasCroatiaKey(input: "ljes=njak")

//func countOfCroatiaAlphabet(input:String) -> Int {
//    var inputString:String = input
//    print(inputString)
//    if inputString.count < 2 { return 0 }
//
//    if hasCroatiaKey(input: inputString) {
//        for key in croatiaKey {
//            if croatiaKey.contains(String(inputString.prefix(upTo: key.endIndex))) {
//                print("여기")
//                return countOfCroatiaAlphabet(input: String(inputString.suffix(from: key.endIndex))) + 1
//            } else {
//                print("저기")
//                return countOfCroatiaAlphabet(input: String(inputString.removeFirst()))
//            }
//        }
//    }
//    print("거기")
//    return 0
//}

//hasCroatiaKey(input: "es=njak")
//countOfCroatiaAlphabet(input: "ljes=njak")


//두호님 세번째 Tip
/* 재귀를 안쓰고
 1. 들어온 문자열이 빈 문자열이 아닌지 확인하고
 2. 들어온 word가 mutable 하므로 변수 지정을 한다.
 3. 카운트 올릴 variation 지정
 4. while을 이용하여 1번을 검증하고
 5. for in을 이용하여 크로아티아 알파벳을 하나씩 집어넣어 prefix와 비교한다.
 6. 만약에 있을 경우, for-in문은 break
 7. 그리고 optional을 사용해서 matched인지 아닌지 확인
 8. matched라면 nil 상태의 optional에 알파벳을 부여하고, 그렇지 않으면 계속 돌아간다.
 9. for 문이 끝난 이후 optional 변수의 상태를 확인해서,
 10. 값이 있으면 해당 부분을 제외한 suffix
 11. 값이 없으면 한글자만 제외한 suffix
 */

func croatiaWords(input:String) -> Int {
    var count:Int = 0
    var word:String = input
    
    
    
    
    
    var offset:Int = 0
    
    return offset
}


/* 재귀를 쓰고
 1. suffix 부분이랑 실제 재귀가 실행되는 함수를 분리한다.
 2. suffix 부분은 함수로 분리하는 것이 가능하지만, String Extension을 생성하여 suffix를 구할 수 있도록 하는 방법도 있다.
 */







