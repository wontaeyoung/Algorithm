//
//  Lv.0 최댓값 만들기 (1).swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/05.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return numbers.sorted(by: >)[0] * numbers.sorted(by: >)[1]
}
