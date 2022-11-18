//
//  Lv.0 인덱스 바꾸기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/18.
//

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    // 문자열을 배열로 분리
    var ans = my_string.map{String($0)}
    // 둘이 변경
    ans.swapAt(num1, num2)
    // 문자열로 합치기
    return ans.joined()
}

print(solution("hello", 1, 2))

ㅣ
