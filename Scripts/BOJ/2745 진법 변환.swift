//
//  main.swift
//  Codingtest&Algorithm
//
//  Created by 원태영 on 2022/06/24.
//

import Foundation

/*
 - 0~35까지의 숫자를 문자열과 정수형으로 각각 리스트화한다.
 - 문자열로 전달된 숫자를 문자열 리스트에서 찾아서 정수형으로 치환한다.
 - 진수로 전달된 b로 각 index의 숫자 자리를 계산한다.
 - 각 자릿수에 있는 값과 자릿수를 곱한 결과를 더해서 최종 숫자를 계산한다.
 */
func solution(_ n : String, _ b : Int) -> Int
{
  // 0 ~ 35의 문자열 리스트
  let numsCharList : [String] = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
  // 0 ~ 35의 정수 리스트
  let numsIntList : [Int] = [Int](0...35)
    
  // String으로 주어진 입력 숫자를 Char 단위로 쪼개서 리스트화
  let numSplited = n.map{String($0)}
  
  // Char 단위로 쪼갠 배열 원소를 정수열로 치환해서 담을 리스트
  var numToInt = [Int]()
  
  // numSplited의 원소를 하나씩 받아서 문자열 리스트에서 index를 찾고, 정수 리스트에서 대응되는 index의 값으로 치환
  for i in numSplited
  {
    let index = numsCharList.firstIndex(of: i) ?? 0
    
    numToInt.append(numsIntList[index])
  }
  
  // 큰 자릿수 -> 작은 자릿수의 index를 반대로 하기 위해서 reverse
  let numReversed : [Int] = numToInt.reversed()
  
  // 값 * 자릿수 결과를 받을 리스트
  var returnBox = [Int]()
  
  // 값 * (진수 * 지수)로 자릿수만큼 곱해진 결과 삽입
  for i in 0...numReversed.count-1
  {
    returnBox.append(numReversed[i]*Int(pow(Float(b),Float(i))))
  }
    
  // 결과를 모두 더해서 반환
  return returnBox.reduce(0){$0+$1}
}

var input = readLine()

if let input = input{
  let inputs = input.components(separatedBy: " ")
  print(solution(inputs[0], Int(inputs[1])!))
}
