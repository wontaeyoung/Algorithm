//
//  14681_사분면 고르기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/04.
//

import Foundation

let x = Int(readLine()!)!
let y = Int(readLine()!)!

print(x * y > 0
      ? x > 0 ? 1 : 3
      : x > 0 ? 4 : 2
)
