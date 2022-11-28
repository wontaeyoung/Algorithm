//
//  Lv.1 나누어 떨어지는 숫자 배열.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/28.
//

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    return arr.filter{$0 % divisor == 0}.isEmpty ? [-1] : arr.filter{$0 % divisor == 0}.sorted()
}
