//
//  Lv.0 약수 구하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/24.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    return (1...n).filter{n % $0 == 0}.sorted()
}
