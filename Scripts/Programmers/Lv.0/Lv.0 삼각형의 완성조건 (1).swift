//
//  Lv.0 삼각형의 완성조건 (1).swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/24.
//

import Foundation

func solution(_ sides:[Int]) -> Int {
    return sides.max()! < sides.reduce(0,+) - sides.max()! ? 1 : 2
}
