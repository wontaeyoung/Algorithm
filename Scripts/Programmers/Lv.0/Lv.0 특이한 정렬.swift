//
//  Lv.0 특이한 정렬.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/19.
//

import Foundation
[1,2,3,4,5,6] n == 4
func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    numlist.sorted{
        // 두 숫자의 차이가 같으면 값이 더 큰 애가 앞으로
        if abs(n - $0) == abs(n - $1) { return $0 > $1 }
        
        // 두 숫자의 차이가 더 작은걸 앞으로
        return abs(n - $0) < abs(n - $1)
    }
}
