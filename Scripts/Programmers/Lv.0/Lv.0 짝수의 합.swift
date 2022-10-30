//
//  Lv.0 짝수의 합.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/30.
//

import Foundation

func solution(_ n:Int) -> Int {
    return (0...n).filter{$0 % 2 == 0}.reduce(0,+)
}
