//
//  Lv.0 n의 배수 고르기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/10.
//

import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    return numlist.filter{$0 % n == 0}
}
