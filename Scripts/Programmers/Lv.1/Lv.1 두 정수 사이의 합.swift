//
//  Lv.1 두 정수 사이의 합.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/28.
//

func solution(_ a:Int, _ b:Int) -> Int64 {
    var ans : Int = 0
    if a > b {
        for i in b...a {
            ans += i
        }
    } else {
        for i in a...b {
            ans += i
        }
    }
    return Int64(ans)
}
