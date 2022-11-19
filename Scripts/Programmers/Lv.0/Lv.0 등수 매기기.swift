//
//  Lv.0 등수 매기기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/19.
//

import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let rankList = score.map{$0[0]+$0[1]}.sorted(by: >) // 두 점수의 합을 내림차순으로
    print(rankList)
    print(score.map{ rankList.firstIndex(of: $0[0]+$0[1])! + 1 })
    return score.map{ rankList.firstIndex(of: $0[0]+$0[1])! + 1 } // 랭크 리스트에서 두 점수의 합의 인덱스 + 1(등수)를 찾아오기
}

solution([[100,80], [70,50], [1,2], [50,90]])
