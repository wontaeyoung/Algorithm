import Foundation

let graph : [Int : [Int]] =
[
  1 : [2,3],
  2 : [1,4,5],
  3 : [1,6],
  4 : [2],
  5 : [2],
  6 : [3]
]

func BFS(graph : [Int : [Int]], startKey : Int) -> [Int]
{
  var visitedQueue : [Int] = []
  
  var needVisitQueue : [Int] = [startKey]
  
  while !needVisitQueue.isEmpty
  {
    let node : Int = needVisitQueue.removeFirst()
    print("추출 값 : \(node)")
    
    if visitedQueue.contains(node) {continue}
    
    visitedQueue.append(node)
    
    needVisitQueue += graph[node] != nil ? graph[node]! : []
    print(needVisitQueue)
  }
 
  return visitedQueue
}

print(BFS(graph: graph, startKey: 1))
