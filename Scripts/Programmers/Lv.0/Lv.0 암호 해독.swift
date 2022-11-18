//
//  Lv.0 암호 해독.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/18.
//

import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.map{String($0)}.enumerated().filter{($0.offset + 1) % code == 0}.map{$0.element}.joined()
}

print(solution("qwerty", 4))
