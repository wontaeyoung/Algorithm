//
//  Lv.1 나머지가 1이 되는 수 찾기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/28.
//

import Foundation

func solution(_ n:Int) -> Int {
    return Array(1...n).filter{n % $0 == 1}.first!
}
