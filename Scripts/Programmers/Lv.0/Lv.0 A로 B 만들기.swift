//
//  Lv.0 A로 B 만들기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/19.
//

import Foundation

func solution(_ before:String, _ after:String) -> Int {
    return before.sorted() == after.sorted() ? 1 : 0
}
