//
//  Lv.0 각도기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/11.
//

import Foundation

func solution(_ angle:Int) -> Int {
    return angle < 90 ? 1
    : angle == 90 ? 2
    : angle < 180 ? 3
    : 4
}
