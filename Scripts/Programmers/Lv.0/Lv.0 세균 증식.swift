//
//  Lv.0 세균 증식.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/24.
//

import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    return Array(repeating : 2, count : t).reduce(n,*)
}
