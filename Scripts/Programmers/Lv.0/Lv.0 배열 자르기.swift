//
//  Lv.0 배열 자르기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/22.
//

import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return [Int](numbers[num1...num2])
}

