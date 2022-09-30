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

/*
 K : 좋은 정답인 것 같아서 참고
 
 import Foundation

 func solution(_ numbers:[Int], _ hand:String) -> String {
     // 버튼의 위치 테이블
     let buttonPoses = [1: Position(x: 0, y: 0), 2: Position(x: 1, y: 0), 3: Position(x: 2, y: 0),
                        4: Position(x: 0, y: 1), 5: Position(x: 1, y: 1), 6: Position(x: 2, y: 1),
                        7: Position(x: 0, y: 2), 8: Position(x: 1, y: 2), 9: Position(x: 2, y: 2),
                        0: Position(x: 1, y: 3)]
     var leftThumbPos = Position(x: 0, y: 3)     // 왼손 엄지는 *에서 시작
     var rightThumbPos = Position(x: 2, y: 3)    // 오른손 엄지는 #에서 시작
     var answer = ""

     for number in numbers {
         // 키를 누르는데 사용할 엄지 손가락 결정
         let selectedHand: String
         switch number {
             case 1, 4, 7:
                 selectedHand = "L"
             case 3, 6, 9:
                 selectedHand = "R"
             default:
                 let targetButtonPos = buttonPoses[number]!
                 let leftThumbDistance = targetButtonPos.manhattanDistance(to: leftThumbPos)
                 let rightThumbDistance = targetButtonPos.manhattanDistance(to: rightThumbPos)
                 if leftThumbDistance < rightThumbDistance {
                     selectedHand = "L"
                 } else if rightThumbDistance < leftThumbDistance {
                     selectedHand = "R"
                 } else {
                     selectedHand = hand == "left" ? "L" : "R"
                 }
         }

         // 버튼을 누른 손가락을 이동시키고 사용한 손가락을 기록
         let buttonPos = buttonPoses[number]!
         if selectedHand == "L" {
             leftThumbPos = buttonPos
         } else {
             rightThumbPos = buttonPos
         }
         answer += selectedHand
     }

     return answer
 }

 struct Position {
     var x: Int
     var y: Int

     func manhattanDistance(to: Position) -> Int {
         return abs(x - to.x) + abs(y - to.y)
     }
 }
 */
