//
//  1009_분산처리.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/06.
//

/// 1차 시도
/// 처음에는 뭐가 어렵지? 하면서 숫자에 거듭제곱 한 결과를 가지고 하려고 했는데, 숫자가 너무 커서 Int 오버플로우 발생. 다른 방법 필요
///
/// 2차 시도
/// 입력 예제를 보니까 7의 100제곱도 오버플로우가 나는데 9의 635제곱은 절대 안되겠다고 생각함
/// 여기까지 보고나서 진짜 제곱을 하는게 아니라 어떤 규칙을 찾아야된다는걸 깨달음
/// 재용이 컴퓨터가 10대인걸 보고 혹시나 싶어서 해봤는데, 계산 결과의 1의 자리만 필요하다면, 1의 자리만 가지고 거듭제곱을 해도 같은 결과가 나온다는 것을 알게 됨
/// 제곱 계산을 한번에 하지 않고, 곱셈 계산 -> 1의 자리만 남기기 -> 다음 곱셈 계산 형태로 반복
/// 입력 - 출력 예제는 정상적으로 나오나, 제출해보니 시간 초과. 시간을 줄일 수 있는 방식이 필요할 듯
///
/// 3차 시도
/// 지금 형태도 최소한의 계산만 하는 느낌이어서 줄일 방법이 생각나지 않았음
/// 그래서 계산을 다 안해도 문제를 푸는 방법이 있는것같다고 생각함
/// 그러다가 문득 구구단을 생각했는데 1의 자리가 동일한 패턴으로 계속 나온다는 사실이 생각남
/// 제곱에도 동일하게 테스트해보니 1의 자리가 계속 같은 패턴으로 나온다는 것을 알게됨
/// 각 숫자의 패턴을 미리 파악해서 직접 계산하지 않아도 컴퓨터 순서를 알 수 있도록 코드 변경
/// 패턴과 지수를 비교해서 마지막 작업 컴퓨터의 번호를 담아 출력!!


// -- 2차 시도까지의 흔적
 
 import Foundation

 // 계산 결과 출력용 배열
 var result : [Int] = []

 // 1 ~ 첫 입력 숫자까지 for문
 for _ in 1...Int(readLine()!)! {
     // 한줄씩 들어오는 "수 지수"를 [수, 지수]로 분리해서 input에 할당
     let input = readLine()!.split(separator: " ").map{Int($0)}
     
     // [수, 지수] 중에 수를 left에 할당
     let left : Int = input[0]!
     // 아래 for문에서 계산한 결과를 담아줄 변수 num
     var num : Int = 1
     
     // 지수 횟수만큼 곱하기 반복, ex) (7 100) = 7 * 7 * 7 * 7...
     for _ in 1...input[1]! {
         // 오버플로우를 방지하기 위해 곱셈 결과의 1의 자리 숫자만 남기기
         let x : Character = String(num * left).last!
         num = Int(String(x))!
     }
     
     // 수^지수 계산이 끝난 결과를 result 배열에 추가
     result.append(num)
 }

 // 계산 결과 리스트를 한줄씩 출력
 print(result
     .map{String($0)}
     .joined(separator: "\n")
 )
 



import Foundation

// 정수를 입력받아서 1의 자리를 정수형으로 반환하는 익스텐션
extension Int {
    func last() -> Int {
        let x : Character = String(self).last!
        return Int(String(x))!
    }
}

// 계산 결과 출력용 배열
var result : [Int] = []

// 1 ~ 첫 입력 숫자까지 for문
for _ in 1...Int(readLine()!)! {
    // 한줄씩 들어오는 "수 지수"를 [수, 지수]로 분리해서 input에 할당
    let input = readLine()!.split(separator: " ").map{Int($0)}

    // [수, 지수] 중에 수의 1의 자리를 left에 할당
    let left : Int = input[0]!.last()

    // 1의 자리 패턴을 담을 배열
    var pattern : [Int] = [left]

    // 아래 while문에서 계산한 결과의 1의 자리를 담을 변수
    var num : Int = left

    // 제곱할때마다의 1의 자리를 pattern에 추가, 한바퀴 돌아서 첫 1의 자리와 일치하면 while문 종료
    while true {
        num = (num * left).last()

        if num == left { break }
        else { pattern.append(num) }
    }

    // 지수를 전부 제곱했을 때, 패턴의 몇번째 자리에 해당하는지 계산
    let beforeIdx = input[1]! % pattern.count
    // 지수 % 패턴 길이가 0이면 마지막 패턴을 의미하므로 패턴 길이 - 1을 인덱스에 할당, 아니면 자리 - 1을 인덱스에 할당
    let afterIdx = beforeIdx == 0 ? pattern.count-1 : beforeIdx-1
    print(pattern)

    // 패턴[인덱스] 값을 결과 배열에 추가, 1의 자리가 0이면 10을 의미하므로 10으로 추가
    result.append(pattern[afterIdx] == 0 ? 10 : pattern[afterIdx])
}

// 계산 결과 리스트를 한줄씩 출력
print(result
    .map{String($0)}
    .joined(separator: "\n")
)





/*
 
 5
 1 6
 3 7
 6 2
 7 100
 9 635
 
 1
 7
 6
 1
 9
 
 */

