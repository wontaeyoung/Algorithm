//
//  Lv.1 문자열 다루기 기본.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/29.
//

import Foundation

func solution(_ s:String) -> Bool {
    return [4,6].contains(s.count) && !s.map{$0.isNumber}.contains(false)
}
