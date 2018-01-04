//: Playground - noun: a place where people can play

import UIKit

/*:
 # 평균은 넘겠지 (#4344)
 ## 문제
 대학생 새내기들의 90%는 자신이 반에서 평균은 넘는다고 생각한다. 당신은 그들에게 슬픈 진실을 알려줘야 한다.
 
 ## 예
 ### input
 100 95 90 80 70 60 50
 
 ### output
 57.143%
 
 */
func percentageOfAboveAverage(scores:[Double]) {
    var summary:Double = 0
    
    for score in scores {
        summary += score
    }
    
    let average:Double = summary/Double(scores.count)
    
    var aboveAverages:[Double] = scores.filter { (score) -> Bool in
        return score > average
    }
    
    let result:Double = (Double(aboveAverages.count) * 100 / Double(scores.count))
    print("\(round(result*1000)/1000)%")
}

percentageOfAboveAverage(scores: [100, 85, 90, 80, 70, 60, 50])

