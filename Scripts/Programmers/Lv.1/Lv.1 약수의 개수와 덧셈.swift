//
//  Lv.1 약수의 개수와 덧셈.swift
//  Algorithm
//
//  Created by 원태영 on 2022/12/03.
//

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    let nums : [Int] = Array(left...right)
    
    var isEvenList : [Bool] = nums.map{
        let n = $0
        return (1...$0)
            .filter{n % $0 == 0}
            .count % 2 == 0
    }
    
    return (0..<nums.count)
        .map{isEvenList[$0] ? nums[$0] : -nums[$0]}
        .reduce(0,+)
}
