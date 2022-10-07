//
//  Lv.1 행렬의 덧셈.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/06.
//

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var ans = arr1
    for i in 0..<ans.count {
        for j in 0..<ans[0].count {
            ans[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return ans
}

solution([[1,2],[2,3]] , [[3,4],[5,6]])

