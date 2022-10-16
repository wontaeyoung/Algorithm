//
//  Lv.0 문자열 정렬하기 (2).swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/16.
//

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.lowercased().sorted().map{String($0)}.joined()
}
