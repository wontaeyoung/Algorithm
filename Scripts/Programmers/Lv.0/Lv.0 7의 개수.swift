//
//  Lv.0 7의 개수.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/13.
//

import Foundation

func solution(_ array:[Int]) -> Int {
    return array.map{String($0)}.joined().filter{$0 == "7"}.count
}
