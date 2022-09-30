//
//  main.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/01.
//
import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var energy : Int = k
    var sortedDungeonList = dungeons
        .sorted{
            if $0[1] == $1[1] {
                return $0[0] < $0[1]
            }
            return $0[1] < $1[1]
        }
    
    print(sortedDungeonList)
    return -1
}




// 피로도 k는 1 이상 5,000 이하
// 던전 갯수는 1 ~ 8
// 던전은 [최소 필요, 소모 피로도]
// 최소 필요 >= 소모 피로도
// 두 던전의 피로도 배열은 같을 수 있음
let k : Int = 80
let dungeons : [[Int]] = [[80,20], [50,40], [30,10]]
let list = [[50,30],[50,40],[70,10],[60,60]]

solution(k, list)

