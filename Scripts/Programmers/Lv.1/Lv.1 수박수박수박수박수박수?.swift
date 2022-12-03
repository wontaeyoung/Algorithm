//
//  Lv.1 수박수박수박수박수박수?.swift
//  Algorithm
//
//  Created by 원태영 on 2022/12/03.
//

func solution(_ n:Int) -> String {
    return Array(1...n).map{$0 % 2 == 1 ? "수" : "박"}.joined()
}

func solution2(_ n:Int) -> String {
    String(repeating: "수박", count: n/2) + String(n % 2 == 1 ? "수" : "")
}

print(solution2(5))

print(String(repeating: "수박", count: 4/2))

