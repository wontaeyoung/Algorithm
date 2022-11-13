//
//  LV.0 배열 회전시키기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/13.
//

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    return direction == "left"
    ? numbers.dropFirst() + [numbers.first!]
    : [numbers.last!] + numbers.dropLast()
}
