//
//  Lv.0 짝수 홀수 개수.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/30.
//

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return [num_list.filter{$0 % 2 == 0}.count, num_list.filter{$0 % 2 == 1}.count]
}
