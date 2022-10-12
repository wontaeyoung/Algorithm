//
//  Lv.0 대문자와 소문자.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/12.
//

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map{String($0).range(of: #"[a-z]"#, options : .regularExpression) != nil ? $0.uppercased() : $0.lowercased()}.joined()
}
