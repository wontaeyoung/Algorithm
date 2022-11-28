//
//  Lv.1 3진법 뒤집기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/28.
//

import Foundation

func solution(_ n:Int) -> Int {
    return Int(String(String(n, radix: 3).reversed()),radix: 3)!
}
