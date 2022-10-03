//
//  main.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/01.
//

/*
 let rawData = "0123"
 let data = rawData.map { String($0) }
 var visit = [Bool](repeating: false, count: data.count)
 
 dfs(data: data, curInd: 0, curCnt: 0, targetCnt: 2, answer: "")
 
 func dfs(data: [String], curInd: Int, curCnt: Int, targetCnt: Int, answer: String) {
 if curCnt == targetCnt {
 print(answer)
 return
 }
 
 for i in 0..<data.count {
 if !visit[i] {
 visit[i] = true
 dfs(data: data, curInd: i, curCnt: curCnt + 1, targetCnt: targetCnt, answer: answer + data[i])
 visit[i] = false
 }
 }
 }
 */
// --------------------------------------------------------------------------------------------------------


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

print(solution(k, list))
