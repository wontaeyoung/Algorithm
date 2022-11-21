//
//  Lv.0 이진수 더하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/21.
//

import Foundation

// 1. 이진수 계산을 위해 왼쪽부터 시작하도록 뒤집어서 배열로 만들기. 10011 -> [1,1,0,0,1]
// 2. 올림처리를 원활하게 하기 위해 bin1,2의 최대 길이인 10자리까지

func solution(_ bin1:String, _ bin2:String) -> String {
    let binX = bin1.reversed().map{Int(String($0))!} + Array(repeating: 0, count: 10 - bin1.count)
    let binY = bin2.reversed().map{Int(String($0))!} + Array(repeating: 0, count: 10 - bin2.count)
    var ceilList : [Int] = Array(repeating: 0, count: 11)
    
    print(binX)
    print(binY)
    print(ceilList)
    
    for i in 0...9 {
       ceilList[i] = binX[i] + binY[i] + ceilList[i]
        if ceilList[i] > 1 { ceilList[i+1] = 1 }
    }
    print(String(Int(ceilList.map{$0 % 2}.reversed().map{String($0)}.joined())!))
    
    return String(Int(ceilList.map{$0 % 2}.reversed().map{String($0)}.joined())!)
}

solution("10101", "111")
