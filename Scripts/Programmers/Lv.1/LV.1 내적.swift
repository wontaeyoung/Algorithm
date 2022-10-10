//
//  LV.1 내적.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/10.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return (0..<a.count).map{a[$0] * b[$0]}.reduce(0,+)
    
}
