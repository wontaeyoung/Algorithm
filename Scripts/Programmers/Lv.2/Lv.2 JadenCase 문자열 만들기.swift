//
//  Lv.2 JadenCase 문자열 만들기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/02.
//

import Foundation

func solution(_ s:String) -> String {
    
    var spaceIndexList = s
    .map{String($0)}
    .enumerated()
    .filter{$1 == " "}
    .map{$0.offset}
    
    var string = s
    .lowercased()
    .split(separator: " ")
    .map{String($0.first!.uppercased()) + $0[$0.index(after: $0.startIndex)..<$0.endIndex]}
    .joined()
    .map{String($0)}
    
    for idx in spaceIndexList {
        string.insert(" ", at: idx)
    }
    
    return string.joined()
}
