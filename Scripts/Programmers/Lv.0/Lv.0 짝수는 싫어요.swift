//
//  Lv.0 짝수는 싫어요.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/05.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    return (1...n).filter{$0 % 2 == 1}
}
