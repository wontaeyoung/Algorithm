//
//  Lv.0 가장 큰 수 찾기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/11.
//

import Foundation

func solution(_ array:[Int]) -> [Int] {
    return [array.max()!, array.firstIndex(of:array.max()!)!]
}

