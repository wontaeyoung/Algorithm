import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int]
{
    var answer : [Int] = []
    
    for i in commands
    {
        let arr : [Int] = [Int](array[i[0]-1...i[1]-1])
        
        answer.append(arr.sorted()[i[2]-1])
    }
    
    return answer
}
