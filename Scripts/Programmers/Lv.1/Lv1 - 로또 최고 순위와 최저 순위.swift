import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int]
{
    var correctCounter = 0
    
    var zeroCounter = 0
    
    var ans = [Int]()
    
    for i in lottos
    {
        if i == 0
        {
            zeroCounter += 1
        }
        else if win_nums.contains(i)
        {
            correctCounter += 1
        }
    }
    
    switch correctCounter + zeroCounter {
    case 6:
    ans.append(1)
    case 5:
    ans.append(2)
    case 4:
    ans.append(3)
    case 3:
    ans.append(4)
    case 2:
    ans.append(5)
    default:
    ans.append(6)
    }
    
    switch correctCounter {
    case 6:
    ans.append(1)
    case 5:
    ans.append(2)
    case 4:
    ans.append(3)
    case 3:
    ans.append(4)
    case 2:
    ans.append(5)
    default:
    ans.append(6)
    }
    
    return ans
}


 // 좋은 풀이 1
 // filter로 0만 남긴 배열의 갯수로 zeroCunt를 계산
 // 당첨번호.contains 로또 번호로 winCount를 계산
 // min으로 최고순위(7 - 맞춘 갯수 - 0의 갯수 = 순위), 최저순위(7 - 맞춘 갯수 = 순위)로 return
 
 import Foundation

 func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {

     let zeroCount = lottos.filter { $0 == 0}.count
     let winCount: Int = win_nums.filter { lottos.contains($0) }.count


     return [min(7-winCount-zeroCount,6), min(7-winCount,6)]
 }
 
// 좋은 풀이 2
// lottos.filter { winNums.contains($0) || $0 == 0 }로 정답 번호에 포함되거나, 0인 경우를 카운트
// 등수가 6을 넘는 경우에 $0-1, 아닌 경우에는 $0를 출력해서 예외처리

import Foundation

func solution(_ lottos: [Int], _ winNums: [Int]) -> [Int]
{
    return [(lottos.count + 1) - lottos.filter { winNums.contains($0) || $0 == 0 }.count, (lottos.count + 1) - lottos.filter(winNums.contains).count].map { $0 > 6 ? $0 - 1 : $0 }
}

// 좋은 풀이 3

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int]
{
    let mine = Set(lottos)
    let winner = Set(win_nums)
    let score = mine.intersection(winner).count
    let joker = lottos.filter { ($0 == 0) }.count
    let ranking = [6, 6, 5, 4, 3, 2, 1]
    return [ranking[score + joker], ranking[score]]
}


