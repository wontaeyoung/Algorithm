//
//  Lv.1 자릿수 더하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/12/04.
//

import Foundation

func solution(_ n:Int) -> Int {
    return String(n).map{Int(String($0))!}.reduce(0,+)
}
