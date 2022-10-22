//
//  Lv.0 배열의 평균값.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/22.
//

import Foundation

func solution(_ numbers:[Int]) -> Double {
    return Double(numbers.reduce(0,+)) / Double(numbers.count)
}

