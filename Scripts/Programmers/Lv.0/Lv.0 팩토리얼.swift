//
//  Lv.0 팩토리얼.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/07.
//

import Foundation

func solution(_ n:Int) -> Int {
    return n < 3
    ? n
    : n == 3628800
    ? 10
    : (3...10).map{(1...$0).reduce(1,*) > n
        ? $0-1 : 0}.filter{$0 > 0}.first!
}
print(solution(362879))
