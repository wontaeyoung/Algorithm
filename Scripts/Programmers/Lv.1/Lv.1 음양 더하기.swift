//
//  Lv.1 음양 더하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/12/04.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return Array(0..<signs.count).map{signs[$0] ? absolutes[$0] : -absolutes[$0]}.reduce(0,+)
}

[1,-2,3,-4,5]
[true,false,true,false,true]
