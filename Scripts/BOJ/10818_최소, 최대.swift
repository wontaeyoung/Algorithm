//
//  10818_최소, 최대.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/04.
//

import Foundation

let numCount = readLine()!
let nums = readLine()!.split(separator: " ").map{Int($0)!}
print(nums.min()!, nums.max()!)
