//
//  Lv.0 특정 문자 제거하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/07.
//

import Foundation

// 필터 사용하기
func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.filter{String($0) != letter}
}

// 글자 재배치 사용하기
/*
func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.replacingOccurrences(of: letter, with: "")
}
*/


let a = "aabbcc"
print(solution(a, "b"))

