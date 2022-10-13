//
//  Lv.0 모음 제거.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/13.
//

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map{String($0)}.filter{!["a","e","i","o","u"].contains($0)}.joined()
}
