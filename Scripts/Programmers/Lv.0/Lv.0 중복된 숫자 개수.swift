//
//  Lv.0 중복된 숫자 개수.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/30.
//

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.filter{$0 == n}.count
}
