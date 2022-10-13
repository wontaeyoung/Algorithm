//
//  Lv.0 문자 반복 출력하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/13.
//

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map{[String](repeating : String($0), count : n).reduce("",+)}.reduce("",+)
}
