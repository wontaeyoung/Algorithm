//
//  2739_구구단.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/04.
//

import Foundation

let n = Int(readLine()!)!

print(
    (1...9)
    .map{"\(n) * \($0) = \(n * $0)"}
    .joined(separator: "\n")
)
