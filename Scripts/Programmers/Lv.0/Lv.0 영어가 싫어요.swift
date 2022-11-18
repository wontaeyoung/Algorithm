//
//  Lv.0 영어가 싫어요.swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/18.
//

import Foundation

// 2번 - replacing 함수로 치환하기
func solution(_ numbers:String) -> Int64 {
    let numberStrList = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    var numbers = numbers // 문자열을 갱신받을 변수
    
    // numberStrList를 인덱스로 순서대로 탐색
    for i in 0...numberStrList.count - 1 {
        // 문자열을 하나씩 numbers에서 찾아서 숫자로 치환
        numbers = numbers.replacingOccurrences(
            of: numberStrList[i], // 숫자 문자열 - zero
            with: String(i) // 숫자 - 0
        )
    }
    return Int64(numbers)!
}

print(solution("onefourzerosixseven"))


// 1번 - 문자가 모두 숫자로 바뀔때까지 반복하며 hasPrefix로 체크하기
/*
func solution(_ numbers:String) -> Int64 {
    let numberStrList = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    var numbers : String = numbers // 문자열을 갱신받을 변수
    
    // 문자열이 Int로 변환이 가능할때까지 반복
    while Int(numbers) == nil {
        
        // numberStrList를 인덱스로 순서대로 탐색
        for i in 0...numberStrList.count - 1 {
            
            let str = numberStrList[i] // 인덱스 i에 해당하는 숫자문자열
            
            // numbers의 시작 부분이 str과 일치하면
            if numbers.hasPrefix(str) {
                // 앞에서 해당 문자열 길이만큼 제거 ex. zero면 앞에서부터 4글자 제거
                numbers.removeFirst(str.count)
                // 문자열 끝에 방금 제거한 문자에 해당하는 숫자 추가 (앞에 추가하면 hasPrefix를 사용할 수 없음)
                numbers += String(i)
            }
        }
    }
    return Int64(numbers)!
}
*/

