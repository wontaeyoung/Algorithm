//
//  Lv.1 문자열을 정수로 바꾸기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/29.
//

func solution(_ s:String) -> Int {
    return s.first! == "-"
    ? -1 * Int(s[s.index(after : s.startIndex)..<s.endIndex])!
    : s.first! == "+"
        ? Int(s[s.index(after : s.startIndex)..<s.endIndex])!
        : Int(s)!
}
