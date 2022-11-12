//
//  Lv.0 구슬을 나누는 경우의 수.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/12.
//


import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {

    guard balls != share else {
        return 1
    }

    let list = Array(1...balls)
    let visit = [Bool](repeating: false, count: balls)
    var counter : Int = 0

    func search(data : [Int],
                currentIndex : Int,
                currentDepth : Int,
                targetDepth : Int,
                isVisit : [Bool],
                sum : [Int]
    ) {
        guard currentDepth < targetDepth else {
            print(sum)
            counter += 1
            return
        }

        for i in currentIndex...data.count - 1 {

            if isVisit[i] == false {
                var newVisit = isVisit
                newVisit[i] = true
                search(data: data, currentIndex: i, currentDepth: currentDepth + 1, targetDepth: targetDepth, isVisit: newVisit, sum: sum + [i+1])
            }
        }
    }
    search(data: list, currentIndex: 0, currentDepth: 0, targetDepth: share, isVisit: visit, sum: [])
    return counter
}

print(solution(30, 29))

//import Foundation
//
//func solution(_ balls:Int, _ share:Int) -> Int {
//
//    guard balls != share else {
//        return 1
//    }
//
//    func factorial(_ n : Int) -> Double {
//
//        var fact : Double = 1
//
//        for i in 1...n {
//            fact *= Double(i)
//        }
//
//        return fact
//    }
//    let n = factorial(balls)
//    let m = factorial(share)
//    let nToM = factorial(balls - share)
//    
//    print(n , m, nToM)
//
//    return Int(n / (nToM * m))
//}
//
//
//print(solution(30, 29))
