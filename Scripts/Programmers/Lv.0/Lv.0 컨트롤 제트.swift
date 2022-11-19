//
//  Lv.0 컨트롤 제트.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/19.
//

import Foundation

func solution(_ s:String) -> Int {
    var sArray = s.components(separatedBy: " ")
    
    // 앞에 있는 Z 다 제거
    for n in sArray {
        if n == "Z" {
            sArray.removeFirst()
        } else {
            break
        }
    }
    
    // 배열에 Z가 없을때까지
    while sArray.firstIndex(of: "Z") != nil {
        // 첫번째 Z 위치 찾기
        let idx = sArray.firstIndex(of: "Z")!
        
        // Z랑 앞에 있는 숫자 제거
        sArray.remove(at: idx)
        sArray.remove(at: sArray.index(before: idx))
        print(sArray)
    }
    
    return sArray.map{Int($0)!}.reduce(0,+)
}
print(solution(" 10 20"))
