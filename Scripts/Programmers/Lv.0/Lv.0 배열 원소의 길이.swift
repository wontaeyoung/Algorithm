//
//  Lv.0 배열 원소의 길이.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/22.
//

import Foundation

func solution(_ strlist:[String]) -> [Int] {
    return strlist.map{$0.count}
}
