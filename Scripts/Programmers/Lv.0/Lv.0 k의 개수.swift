//
//  Lv.0 k의 개수.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/17.
//

import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return Array(i...j).map{String($0)}.joined().filter{String($0) == String(k)}.count
}
