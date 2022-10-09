//
//  Lv.2 카펫.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/09.
//

import Foundation


/// 1차시도
/// 처음에는 두 수의 약수를 구해서 하나씩 시뮬레이션 해보는 그런건줄 알았는데
/// 우연히 맞을수는 있어도, 모든 테스트 케이스를 만족하는 방식이 아니었음
/// 노란색, 갈색, 카펫 전체의 관계를 찾아야 함

/// 2차시도
/// 입출력 예제에 케이스를 그려보니, 노란색은 항상 전체 사이즈에서 가로로 2, 세로로 2만큼 짧은것 같았음
/// 전체 사이즈의 가로/세로 x,y의 경우의 수 중에서, 전체 사이즈와 노란색의 관계가 일치하는 경우를 탐색하여 반환하도록 하여 해결
/// +
/// 계산하고보니 반대로 전체 사이즈가 아닌, 노란색 사이즈 기준으로도 계산이 가능한것 같아서 추가


// 1번 방법 - 전체 사이즈의 가로/세로 경우의 수 중에서, 노란색 사이즈와 공식이 일치하는 경우를 반환
func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    var x : Int = 0
    var y : Int = 0
    let totalSize = brown + yellow
    
    for i in 1...totalSize {
        if totalSize % i == 0 {
            x = totalSize / i
            y = i
            
            if (x-2) * (y-2) == yellow {
                return [x,y]
            }
        }
    }
    return []
}


// 2번 방법 - 노란색 가로/세로의 경우의 수 중에서, 갈색 사이즈와의 공식이 일치하는 경우를 반환
// 갈색이 노란색을 둘러쌓아야하기 때문에, 노란색의 가로/세로의 두배만큼을 차지해야 함
// 노란색에 맞춰서 갈색이 둘러쌓기만 하면 대각선 각 지점이 비기 때문에, 4를 더함
/*
func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    var x : Int = 0
    var y : Int = 0
    
    for i in 1...yellow {
        if yellow % i == 0 {
            x = yellow / i
            y = i
            
            if x * 2 + y * 2 + 4 == brown {
                return [x+2,y+2]
            }
        }
    }
    return []
}
*/
 
let brown = 24
let yellow = 24

print(solution(brown, yellow))

//brown    yellow    return
//10    2    [4, 3]
//8    1    [3, 3]
//24    24    [8, 6]

