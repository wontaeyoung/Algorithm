//
//  Lv.0 점의 위치 구하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/29.
//

import Foundation

func solution(_ dot:[Int]) -> Int {
    return dot[0] > 0
    ? dot[1] > 0 ? 1 : 4
    : dot[1] > 0 ? 2 : 3
}
