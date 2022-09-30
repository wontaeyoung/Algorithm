import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String
{
    var answer : String = ""
 
  // 키패드의 위치를 [x,y]로 저장
  let posDict : [Int : [Int]] =
  [
    1 : [0,3], 2 : [1,3], 3 : [2,3],
    4 : [0,2], 5 : [1,2], 6 : [2,2],
    7 : [0,1], 8 : [1,1], 9 : [2,1],
    0 : [1,0], 11 : [0,0], 12 : [2,0]
  ]
  
  // posDict 두개를 받아서 x축끼리의 차이와 y축끼리의 차이를 각각 구해서 더함
  let distance : ([Int],[Int]) -> Int = {abs($0[0]-$1[0]) + abs($0[1]-$1[1]) }
  
  // 사용한 손을 answer에 추가
  let handAppend : (String) -> Void = {answer = answer + $0}
  
  // 오른손잡이면 true, 왼손잡이면 false
  let rightHandCheck : Bool = hand == "right"
  
  // 마지막 왼손 위치
  var lastLeft = 11
  
  // 마지막 오른손 위치
  var lastRight = 12
  
  for n in numbers
  {
    // 번호가 가운데 줄이면 가까운 손으로 누르고, 거리가 같으면 주로 사용하는 손으로 누르기
    if posDict[n]![0] == 1
    {
      if distance(posDict[n]!,posDict[lastLeft]!) < distance(posDict[n]!,posDict[lastRight]!)
      {
        lastLeft = n
        handAppend("L")
      }
      else if distance(posDict[n]!,posDict[lastLeft]!) > distance(posDict[n]!,posDict[lastRight]!)
      {
        lastRight = n
        handAppend("R")
      }
      else
      {
        if rightHandCheck
        {
          lastRight = n
          handAppend("R")
        }
        else
        {
          lastLeft = n
          handAppend("L")
        }
      }
    }
    // 번호가 왼쪽 줄이면 왼손으로 누르기
    else if posDict[n]![0] == 0
    {
      lastLeft = n
      handAppend("L")
    }
    // 번호가 오른쪽 줄이면 오른손으로 누르기
    else
    {
      lastRight = n
      handAppend("R")
    }
  }
  
  return answer
}
