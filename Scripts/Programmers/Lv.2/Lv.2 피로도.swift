//
//  Lv.2 피로도 - 풀이 중.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/03.
//

import Foundation
/* -- ~2차 시도까지의 흔적
 
func simulation(_ condition : Int, _ list : [[Int]], _ isNeedPriority : Bool) -> Int {
    var energy : Int = k
    var clearCounter : Int = 0
    var sortedDungeonList : [[Int]] = []
    
    if isNeedPriority {
        sortedDungeonList = dungeons.sorted{
            if $0[1] == $1[1] { // 소모 피로도가 같으면
                return $0[0] > $1[0] // 필요 피로도가 높은 순으로 정렬
            }
            return $0[1] < $1[1] // 소모 피로도가 적은 순으로 정렬
        }
    } else {
        sortedDungeonList = dungeons.sorted{
            if $0[0] == $1[0] { // 필요 피로도가 같으면
                return $0[1] > $1[1] // 소모 피로도가 적은 순으로 정렬
            }
            return $0[0] > $1[0] // 필요 피로도가 높은 순으로 정렬
        }
    }
    
    sortedDungeonList.forEach{
        guard energy >= $0[0] else {
            print("현재 피로도 \(energy)가 최소 피로도 \($0) 보다 적습니다.")
            return
        }
        energy -= $0[1]
        clearCounter += 1
    }
    
    return clearCounter
}

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    return [simulation(k, dungeons, true), simulation(k, dungeons, false)].sorted(by: >).first!
}
*/


func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    var deepest : Int = 0 // 가장 높은 던전 탐색 횟수를 담을 변수
    let needList = dungeons.map{$0[0]} // 필요 피로도 리스트
    let consumeList = dungeons.map{$0[1]} // 소모 피로도 리스트
    let isVisitList : [Bool] = [Bool](repeating: false, count: dungeons.count) // 각 던전 번호의 방문 여부
    
    func DFS(remain : Int, depth : Int, isVisit : [Bool], playList : [Int]) {
        print("remain : \(remain), depth : \(depth), playList : \(playList)")
        print("던전 탐색 : \(playList), 탐색 길이 : \(depth)")
        
        // 이번 던전 탐색이 가장 긴 탐색이었으면 변수 갱신
        if deepest < depth {
            deepest = depth
        }
        
        // 방문하지 않았고, 현재 피로도로 방문 가능한 던전이면 탐색
        for i in 0..<dungeons.count {
            if isVisit[i] == false && needList[i] <= remain {
                var newIsVisitList = isVisitList
                newIsVisitList[i] = true
                // 현재 피로도에서 소모 피로도를 차감하고, 방문 횟수 +1, 방문 이력 리스트에 던전 번호 추가
                DFS(remain: remain - consumeList[i], depth: depth + 1, isVisit: newIsVisitList, playList: playList + [i])
            }
        }
    }
    
    DFS(remain: k, depth: 0,isVisit: isVisitList ,playList: [])
    
    return deepest
}



// 피로도 k는 1 이상 5,000 이하
// 던전 갯수는 1 ~ 8
// 던전은 [최소 필요, 소모 피로도]
// 최소 필요 >= 소모 피로도
// 두 던전의 피로도 배열은 같을 수 있음
let k : Int = 80
let dungeons : [[Int]] = [[80,20], [50,40], [30,10]]
let list = [[50,30],[50,40],[70,10],[60,60]]

print(solution(k, dungeons))


/// 1차 시도
/// 처음에는 소모 피로도가 적은 순서대로 정렬해서 했는데, 소모 피로도가 최저가 아니라도, 필요 피로도가 높아서 우선적으로 탐험해야하는 경우가 있었음
/// 이런 경우를 걸러낼 수 있는 조건이 필요함
///
/// 2차 시도
/// 1차 시도 이후로 고민하다가, 필요 피로도순 정렬과 소모 피로도순 정렬의 결과를 비교해서 높은 쪽을 반환하는 방법을 생각했음
/// 시뮬레이션 함수를 만들고, 두 정렬 경우의 수를 모두 돌려봐서 방문 던전 수가 높은 것을 반환하게 함
/// 결론적으로 이 방법도 실패, 사실 작성하면서도 중간에 이 방법은 테스트 케이스에 따라 성공할 수도 있지만, 모든 테스트 케이스에 대응하는 방식은 아니라고 생각이 들었음
/// 대신에 이 방법을 작성하면서, 시뮬레이션을 통해 최대 수를 반환하는 방법이 맞다는 생각은 들었고, 제한 사항의 최대 던전 갯수가 8개 밖에 안되는 내용을 보고 확신이 들었음
/// 모든 경우의 수를 돌릴 방법이 필요함
///
/// 3차 시도
/// 모든 경우의 수를 체크하기 위해 순열 기준의 DFS를 학습해서 적용
/// 각 던전 번호의 방문 여부를 저장하고, 각 던전 방문 경우의 수를 모두 재귀로 확인하여 가장 높은 탐색 횟수를 반환하도록 함
/// 기본적인 구조는 짜여졌으나, 각 던전의 방문 여부를 저장함에도 불구하고, 한번 갔던 던전에 다시 가는 경우가 발생
/// 동작 원리에 대해 정확하게 이해하지 못해서 문제점을 해결하지 못함

