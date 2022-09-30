import Foundation

// 5,9,13,22 시간 초과로 실패.

func solution(_ N:Int, _ stages:[Int]) -> [Int]
{
    var ans : [Int] = []
    
    var stageFailRate = [Int:Float]()
    
    for i in 1...N
    {
        if stages.filter{$0 >= i}.count != 0
        {
            stageFailRate[i] = Float(stages.filter{$0 == i}.count) / Float(stages.filter{$0 >= i}.count)
        }
        else
        {
            stageFailRate[i] = 0.0
        }
    }

    let sorted = stageFailRate.sorted
    {
        if $0.1 == $1.1
        {
            return $0.0 < $1.0
        }
        return $0.1 > $1.1
    }
    
    for i in sorted
    {
        ans.append(i.key)
    }
    
    return ans
}
