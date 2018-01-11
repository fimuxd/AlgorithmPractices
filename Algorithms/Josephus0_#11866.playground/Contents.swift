//: Playground - noun: a place where people can play

import UIKit

/*:
 # 조세퍼스 문제 0 (#11866)
 ## 문제
 조세퍼스 문제는 다음과 같다.
 
 1번부터 N번까지 N명의 사람이 원을 이루면서 앉아있고, 양의 정수 M(≤ N)이 주어진다. 이제 순서대로 M번째 사람을 제거한다. 한 사람이 제거되면 남은 사람들로 이루어진 원을 따라 이 과정을 계속해 나간다. 이 과정은 N명의 사람이 모두 제거될 때까지 계속된다. 원에서 사람들이 제거되는 순서를 (N, M)-조세퍼스 순열이라고 한다. 예를 들어 (7, 3)-조세퍼스 순열은 <3, 6, 2, 7, 5, 1, 4>이다.
 
 N과 M이 주어지면 (N,M)-조세퍼스 순열을 구하는 프로그램을 작성하시오.
 
 ## 예
 ### input
 7 3
 ### output
 [3, 6, 2, 7, 5, 1, 4]
 */

func josephus(numberOfPeople:Int, kill:Int) -> [Int] {
    var alive:[Int] = Array(1...numberOfPeople)
    var killed:[Int] = []
    
    while killed.count != numberOfPeople {
        var range = alive.split(separator: alive[kill-1], maxSplits: 1, omittingEmptySubsequences: false)
        print(alive)
        killed.append(alive[kill-1])
        
        if alive.count > kill {
            alive = Array(range[1] + range[0])
        } else {
            alive = Array(range[0] + range[0])
        }
    }
    
    return killed
}

josephus(numberOfPeople: 7, kill: 3)












