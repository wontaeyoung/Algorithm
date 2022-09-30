import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String]
{
  var answer: [String] = []
  
  var binaryArray = (0...n-1).map{return String(arr1[$0]|arr2[$0],radix: 2)}
  
  
  
  for i in 0...n-1
  {
    while binaryArray[i].count < n {
      binaryArray[i] = "0" + binaryArray[i]
    }
    
    let strBox = binaryArray[i].reduce(""){$0 + ($1 == "0" ? " " : "#")}

    answer.append(strBox)
  }

    return answer
}

let n = 6

let arr1 = [46, 33, 33 ,22, 31, 50]

let arr2 = [27 ,56, 19, 14, 14, 10]

print(solution(n, arr1, arr2))

// 풀이 1
func solution2(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {

    return (0..<n).map {
        let binary = String(arr1[$0] | arr2[$0], radix: 2)
        let padded = String(repeating: "0", count: n - binary.count) + binary
        return padded.reduce("") { $0 + ($1 == "0" ? " " : "#") }
    }
}


