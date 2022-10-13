//
//  Lv.0 머쓱이보다 키 큰 사람.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/13.
//

import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    return array.filter{$0 > height}.count
}
