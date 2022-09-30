import Foundation

var count = 0

func dfs(numbers : [Int], target : Int, idx : Int, sum : Int)
{
    var idx = idx
    
    var sum = sum
    
    if idx == numbers.count
    {
        if sum == target
        {
            count += 1
        }
        return // 재귀 종료
    }
    dfs(numbers : numbers, target : target, idx : idx+1, sum : sum + numbers[idx])
    dfs(numbers : numbers, target : target, idx : idx+1, sum : sum - numbers[idx])
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    dfs(numbers : numbers, target : target, idx : 0, sum : 0)
    
    return count
}
