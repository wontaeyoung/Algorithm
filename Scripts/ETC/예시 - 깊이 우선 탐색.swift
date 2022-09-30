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

func DFS(graph : [Int : [Int]], startKey : Int) -> [Int]
{
  var visitedQueue : [Int] = []
  
  var needVisitStack : [Int] = [startKey]
  
  while !needVisitStack.isEmpty
  {
    
    let node : Int = needVisitStack.removeLast() // 노드 추출
    print("추출된 값 : \(node)")
    
    if visitedQueue.contains(node) {continue} // 방문한적이 있는 노드인지 조회
    print("이미 방문한 노드 여부 : \(visitedQueue.contains(node))")
    
    visitedQueue.append(node)
    print("노드가 추가된 이미 방문 리스트 : \(visitedQueue) ")
    
    needVisitStack += graph[node] ?? []
    print("방문 예정 노드들 : \(needVisitStack)")
  }
  
  return visitedQueue
}

DFS(graph: graph, startKey: 1)
