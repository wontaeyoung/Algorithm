//
//  12840_창용이의 시계.swift
//  Algorithm
//
//  Created by 원태영 on 2022/09/30.
//

import Foundation

// 시 분 초 입력받기
let hms = readLine()!.split(separator: " ").map{Int(String($0))!}

// 몇 줄의 쿼리가 나오는지 입력받기
let queryCount = Int(readLine()!)!

// 시 분 초 쪼개기
let h = hms[0]
let m = hms[1]
let s = hms[2]

// 시분초를 초로 환산
var time : Int = (h == 0 ? 0 : h * 3600) + (m == 0 ? 0 : m * 60) + s

// (명령번호, 초) 형태로 입력받을 배열
var commands : [(c : Int, seconds : Int)] = []

// 쿼리 줄 갯수만큼 for문 실행

for _ in 1...queryCount {
    let query = readLine()!
    // 쿼리의 첫 글자가 3이면 3번 명령에 0초 추가
    // 1 혹은 2면 (공백 앞, 공백 뒤) 형태로 추가
    if query.first! == "3" {
        commands.append((3,0))
    } else {
        let split = query.split(separator: " ").map{Int(String($0))!}
        commands.append((split.first!, split.last!))
    }
}

// 쿼리 한줄씩 실행
for command in commands {
    // 현재 시간초를 시 분 초 문자열로 변환
    let now : String = "\(time / 3600) \((time / 60) % 60) \(time % 60)"

    switch command.c {
    case 1: // 1번 명령이면 현재 시간에 초를 추가하고 하루 단위로 나눈 나머지를 저장
        time = (time + command.seconds) % 86400
    case 2: // 2번 명령이면 현재 시간에 초를 빼기, 음수인경우 양수가 될때까지 하루씩 더하기
        time = time - command.seconds
        while time < 0 {
            time += 86400
        }
    default: // 3번 명령이면 현재 시간을 출력
        print(now)
    }
}
