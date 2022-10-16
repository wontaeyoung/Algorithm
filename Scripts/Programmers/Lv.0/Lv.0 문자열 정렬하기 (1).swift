//
//  Lv.0 문자열 정렬하기 (1).swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/16.
//

import Foundation

func solution(_ my_string:String) -> [Int] {
    return my_string.filter{$0.isNumber}.map{Int(String($0))!}.sorted()
}
