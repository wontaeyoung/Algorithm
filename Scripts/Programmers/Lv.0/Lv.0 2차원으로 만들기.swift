//
//  Lv.0 2차원으로 만들기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/17.
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var array : [Int] = []
    var ans : [[Int]] = []
    
    for i in num_list {
        array.append(i)
        if array.count >= n {
            ans.append(array)
            array = []
        }
    }
    
    return ans
}
