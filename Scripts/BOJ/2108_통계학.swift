//
//  2108_통계학.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/04.
//

import Foundation

var mostDict : [Int : Int] = [:]

var nums : [Int] = []

// 숫자 입력받기
for _ in 1...Int(readLine()!)! {
    nums.append(Int(readLine()!)!)
}

nums.sort() // 작은 순으로 정렬

let setNums : Set<Int> = Set<Int>(nums) // 아래 for문에서 filter 처리의 시간 복잡도가 너무 높아서 Set으로 변환해서 처리

// mostDict에 각 숫자의 개수 추가
for n in setNums {
    mostDict[n] = nums.filter{$0 == n}.count
}

// 최빈값들만 정렬하기
let mostList = mostDict
    .filter{$0.value == mostDict.values.max()} // value가 가장 높은 key-value들만 남기기
    .keys // key들만 배열로 받기
    .sorted() // 작은 순으로 정렬

let numerator : Double = Double(nums.reduce(0,+)) // 분자
let denominator : Double = Double(nums.count) // 분모
let average = Int(numerator / denominator) // 산술평균

let center = nums[nums.count / 2] // 중앙값

let to = abs(nums.max()! - nums.min()!) // 차이

let mostNum = mostList.count == 1 ? mostList[0] : mostList[1] // 최빈값에서 두번째로 작은거

print(average,center,mostNum,to,separator: "\n") // 각 결과값을 한줄씩 출력
