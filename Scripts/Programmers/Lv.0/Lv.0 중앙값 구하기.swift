//
//  Lv.0 중앙값 구하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/30.
//

import Foundation

func solution(_ array:[Int]) -> Int {
    return array.sorted()[array.count / 2]
}
