//
//  Lv.0 잘라서 배열로 저장하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/18.
//

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var element : String = ""
    var answer : [String] = []
    var counter : Int = 0
    for i in my_str {
        element += String(i)
        counter += 1
        if counter == n {
            answer.append(element)
            element = ""
            counter = 0
        }
    }
    if !element.isEmpty {
        answer.append(element)
    }
    return answer
}
