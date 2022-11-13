//
//  팰린드롬 수 - 예슬님.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/13.
//

import Foundation

func solution(input : [Int]) -> [Int] {
    
    var counter : Int = 0
    
    func isPalindrome(_ n : Int) -> Bool {
        let s = String(n)
        return s == String(s.reversed())
    }
    
    func getNextPalindrome(_ n : Int) -> Int {
        
        var num : Int = n
        
        while !isPalindrome(num) {
            counter += 1
            num += 1
        }
        return num
    }
    
    var answer = input.map{getNextPalindrome($0)}
    print(counter)
    return answer
}

print(solution(input: [1000000002, 1000000002, 1000000002, 1000000002, 1000000002,1000000002, 1000000002, 1000000002, 1000000002, 1000000002,1000000002, 1000000002, 1000000002, 1000000002, 1000000002,1000000002, 1000000002, 1000000002, 1000000002, 1000000002,1000000002, 1000000002, 1000000002, 1000000002, 1000000002]))


