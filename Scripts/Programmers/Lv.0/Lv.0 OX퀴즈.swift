//
//  Lv.0 OX퀴즈.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/07.
//

import Foundation

func solution(_ quiz:[String]) -> [String] {
    quiz.map{
        let arr = $0.split(separator: " ")
        return Int(arr[0])! + (arr[1] == "-" ? -1 : 1) * Int(arr[2])! == Int(arr.last!)! ? "O" : "X"
    }
}
