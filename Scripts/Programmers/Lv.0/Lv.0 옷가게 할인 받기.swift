//
//  Lv.0 옷가게 할인 받기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/29.
//

import Foundation

func solution(_ price:Int) -> Int {
    return price >= 500000 ? Int(Double(price) * 0.8)
    : price >= 300000 ? Int(Double(price) * 0.9)
    : price >= 100000 ? Int(Double(price) * 0.95)
    : price
}
