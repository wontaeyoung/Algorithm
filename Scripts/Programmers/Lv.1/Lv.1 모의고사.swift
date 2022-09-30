import Foundation

func solution(_ answers:[Int]) -> [Int]
{
    var ans = [Int]()
    
    var correctCount : [Int:Int] = [1:0,2:0,3:0]
    
    let first = [1,2,3,4,5]
    
    let second = [2,1,2,3,2,4,2,5]
    
    let third = [3,3,1,1,2,2,4,4,5,5]
    
    for i in 0...answers.count-1
    {
        if answers[i] == first[i%first.count]
        {
            correctCount[1, default : 0] += 1
        }
        if answers[i] == second[i%second.count]
        {
            correctCount[2, default : 0] += 1
        }
        if answers[i] == third[i%third.count]
        {
            correctCount[3, default : 0] += 1
        }
    }
    
    let max = correctCount.values.max()
    
    for i in correctCount
    {
        if i.value == max
        {
            ans.append(i.key)
        }
    }
    
    return ans.sorted()
}
