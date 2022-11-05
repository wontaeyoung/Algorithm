//
//  Lv.0 피자 나눠 먹기 (3).swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/05.
//

import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    return n % slice == 0 ? n / slice : n / slice + 1
}
