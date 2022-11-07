//
//  Lv.0 저주의 숫자 3.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/07.
//

import Foundation

func solution(_ n:Int) -> Int {
    var skip : Int = 0 // 3x 마을에서 스킵된 숫자 갯수
    
    for i in 1...n {
        var num = i + skip // 10진수 현재 숫자 + 스킵된 숫자 갯수
        var isSkip = false // 3x 마을에서 스킵해야하는 숫자인지 여부
        
        // 3의 배수거나, 3이 들어가는 숫자면 스킵 필요 여부 true
        if num % 3 == 0 || String(num).map({$0}).contains("3") {
            isSkip = true
        }
        // 스킵을 안해도 되는 숫자가 될 때까지 +1
        while isSkip {
            skip += 1
            num = i + skip
            isSkip = false
            if num % 3 == 0 || String(num).map({$0}).contains("3") {
                isSkip = true
            }
        }
        // 이번 차례가 n이면 반환
        if i == n { return num }
    }
    
    return 0
}

print(solution(40))

//15    25
//40    76

//1 1
//2 2
//3 4
//4 5
//5 7
//6 8
//7 10
//8 11
//9 14
//10 16
//11 17
//12 19
//13 20
//14 22
//15 25



