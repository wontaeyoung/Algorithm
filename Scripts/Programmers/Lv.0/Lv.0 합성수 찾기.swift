//
//  Lv.0 합성수 찾기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/19.
//

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{ num in (1...num).filter{num % $0 == 0}.count > 2}.count
}
