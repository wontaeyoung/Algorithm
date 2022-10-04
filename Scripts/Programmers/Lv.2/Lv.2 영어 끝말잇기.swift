//
//  Lv.2 영어 끝말잇기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/04.
//

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var personNum : Int = 1 // 사람 번호
    var turn : Int = 1 // 차례 카운터
    var lastChar : Character = words.first!.first! // 직전 단어에 마지막 글자
    var answer = [0,0] // 반환 값, 틀린 사람이 없으면 [0,0]
    var usedWords : [String] = [] // 사용한 단어 리스트
    
    // 단어 리스트 탐색
    for word in words {
        // 직전 차례의 마지막 글자와 이번 단어의 첫 글자가 일치하지 않거나, 이번 단어가 사용 단어 리스트에 있으면 반환 값에 [사람 번호, 차례 카운터]를 담고 for문 종료
        if word.first! != lastChar || usedWords.contains(word)  {
            answer = [personNum, turn]
            break
        }
        // 직전 단어의 마지막 글자를 이번 단어의 마지막 글자로 갱신
        lastChar = word.last!
        // 사용 단어 리스트에 이번 단어 추가
        usedWords.append(word)
        
        // 이번 번호가 마지막 번호면 첫 번째 번호로 변경하고 차례 카운터 1 증가
        // 아니면 다음 번호로 증가
        if personNum == n {
            personNum = 1
            turn += 1
        } else {
            personNum += 1
        }
    }
    return answer
}

print(solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]))

