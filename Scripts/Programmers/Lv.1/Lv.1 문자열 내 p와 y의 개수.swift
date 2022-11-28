//
//  Lv.1 문자열 내 p와 y의 개수.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/28.
//

import Foundation

func solution(_ s:String) -> Bool {
    return s.lowercased().filter{$0 == "p"}.count == s.lowercased().filter{$0 == "y"}.count ? true : false
}
