//
//  Lv.0 숫자 찾기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/07.
//

import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let n : Int? = String(num).map{Int(String($0))!}.firstIndex(of:k)
    return n != nil ? n! + 1 : -1
}
