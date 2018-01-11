//: Playground - noun: a place where people can play

import UIKit

/*:
 # 큐 (#10845)
 ## 문제
 정수를 저장하는 큐를 구현한 다음, 입력으로 주어지는 명령을 처리하는 프로그램을 작성하시오.
 
 명령은 총 여섯 가지이다.
 
 push X: 정수 X를 큐에 넣는 연산이다.
 pop: 큐에서 가장 앞에 있는 정수를 빼고, 그 수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 size: 큐에 들어있는 정수의 개수를 출력한다.
 empty: 큐가 비어있으면 1, 아니면 0을 출력한다.
 front: 큐의 가장 앞에 있는 정수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 back: 큐의 가장 뒤에 있는 정수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
 
 ## 예
 ### input
 push 1
 
 push 2
 
 front
 
 back
 
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
 
 front
 
 ### output
 1
 
 2
 
 2
 
 0
 
 1
 
 2
 
 -1
 
 0
 
 1
 
 -1
 
 0
 
 3
 */

struct Queue {
    var items = [Int]()
    
    mutating func push(_ item:Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int {
        if items.isEmpty {
            return -1
        } else {
            return items.removeFirst()
        }
    }
    // 두호님 Tip. 실무에서는 return 값을 옵셔널로 설정해서 하는 경우가 훨씬 많겠죠
    
    func size() -> Int{
        return items.count
    }
    
    func empty() -> Int {
        if items.isEmpty {
            return 1
        } else {
            return 0
        }
    }
    //mutating이 일어나지 않는경우에는 getter로 구현하는게 좋다.
    
    func front() -> Int {
        if items.isEmpty {
            return -1
        } else {
            return items.first!
        }
    }
    
    func back() -> Int {
        if items.isEmpty {
            return -1
        } else {
            return items.last!
        }
    }
}

// 두호님 Tip. struct에서 mutating 키워드에 대한 스터디

var queue:Queue = Queue(items: [])

queue.push(1)
queue.push(2)
queue.front()
queue.back()
queue.size()
queue.empty()
queue.pop()
queue.pop()
queue.pop()
queue.size()
queue.empty()
queue.pop()
queue.push(3)
queue.empty()
queue.front()
