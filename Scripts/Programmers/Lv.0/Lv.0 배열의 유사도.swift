//
//  Lv.0 배열의 유사도.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/22.
//

import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    return s1.filter{s2.contains($0)}.count
}
