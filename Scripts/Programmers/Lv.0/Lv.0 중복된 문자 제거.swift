//
//  Lv.0 중복된 문자 제거.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/21.
//

import Foundation

// forEach
func solution(_ my_string:String) -> String {
    var ans : String = ""
    my_string.forEach{
        print(ans)
        ans += ans.contains($0) ? "" : String($0)
    }
    return ans
}

// 고차함수
func solution(_ my_string:String) -> String {
    return my_string
        .map{$0}
        .enumerated() // [(0,o), (1,h), (2,e), (3,l), (4,l), (5,o)]
        .filter{$0.offset == my_string.map{$0}.firstIndex(of: $0.element)!}
        .map{String($0.element)}
        .joined()
}

solution("ohello")
