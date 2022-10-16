//
//  Lv.0 문자열 안에 문자열.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/16.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str1.components(separatedBy: str2).count > 1 ? 1 : 2
}
