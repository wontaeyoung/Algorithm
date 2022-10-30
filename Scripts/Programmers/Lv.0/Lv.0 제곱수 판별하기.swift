//
//  Lv.0 제곱수 판별하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/30.
//

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{$0 * $0 == n}.isEmpty ? 2 : 1
}
