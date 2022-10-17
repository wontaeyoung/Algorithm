//
//  Lv.1 K번째수_2.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/17.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map{array[$0[0]-1..<$0[1]].sorted()[$0[2]-1]}
}

print(solution([1,5,2,6,3,7,4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
