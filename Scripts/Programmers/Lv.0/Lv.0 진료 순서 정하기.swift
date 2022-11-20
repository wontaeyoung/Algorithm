//
//  Lv.0 진료 순서 정하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/20.
//

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    return emergency.map{emergency.sorted(by: >).firstIndex(of: $0)! + 1}
}
print(solution([30, 10, 23, 6, 100]))

// [2, 4, 3, 5, 1]

