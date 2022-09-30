import Foundation


func solution(_ dartResult:String) -> Int
{
    // 문자열을 받아서 10을 0으로 치환하고, 글자 단위로 배열로 나눈 뒤 0을 10으로 치환
    // 10을 그대로 맵핑하면 1과 0으로 나뉘기 때문
    var split : [String] = dartResult.replacingOccurrences(of: "10", with: "!").map{String($0)}.map{
        if $0 == "!" { return "10"}
        return $0
    }
    
    // 문자와 기호를 숫자로 변경해서 담을 리스트
    var calculate = [Int]()
    
    // 계산 자리를 맞추기 위해 스타상, 아차상이 없는 자리에는 @를 추가 ( *1로 아무 기능이 없을 예정 )
    for i in 0...split.count-2
    {
        if ["S","D","T"].contains(split[i]) && ["*","#"].contains(split[i+1]) == false
        {
            split.insert("@", at:i+1)
        }
    }
    if ["S","D","T"].contains(split.last!) { split.append("@")}
    
    // split을 돌면서 [0,3,6]은 숫자로 치환, [1,4,7]은 pow 지수용 숫자로 치환, [2,5,8]은 최종 *용으로 2, -1, 1로 치환
    for i in 0...split.count-2
    {
        let c = split[i]
        
        if i % 3 == 0 { calculate.append(Int(c)!) }
        else if i % 3 == 1 { calculate.append(c == "S" ? 1 : c == "D" ? 2 : 3) }
        else { calculate.append(c == "*" ? 2 : c == "#" ? -1 : 1) }
    }
    calculate.append(split.last! == "*" ? 2 : split.last! == "#" ? -1 : 1)
    
    
    var result : [Int] = []
    
    for i in 0...calculate.count-3
    {
        var value : Int = 0
        
        // 숫자가 있는 index면 본인에 idx+1을 제곱하고 idx+2를 곱함
        // 본인이 0,3일 때 다음 옵션이 스타상이면 본인 value * 2해서 최종 값을 result에 추가
        if i % 3 == 0
        {
            value = Int(pow(Float(calculate[i]),Float(calculate[i+1])))*calculate[i+2]
            
            if [0,3].contains(i) && calculate[i+5] == 2
            { value *= 2}
            result.append(value)
        }
    }
    
    // 3개의 값을 더해서 return
    return result.reduce(0,+)
    
}
