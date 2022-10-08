//
//  9086_문자열.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/04.
//

import Foundation

var words = [String]()

for _ in 1...Int(readLine()!)! {
    words.append(readLine()!)
}

print(words
    .map{"\($0.first!)\($0.last!)"}
    .joined(separator: "\n"))



let b = ["AE","\n","00","\n","CH"]

let c = "AE\n00\nCH"
