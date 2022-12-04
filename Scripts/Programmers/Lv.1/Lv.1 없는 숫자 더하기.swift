//
//  Lv.1 없는 숫자 더하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/12/04.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return Array(1...9).reduce(0,+) - numbers.reduce(0,+)
}
