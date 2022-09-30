func solution(_ s:String) -> String
{
    var answer : String
    
    let strings = s.map{$0}
    
    let i : Int = strings.count / 2
    
    if strings.count % 2 == 0
    {
        answer = String(strings[i-1]) + String(strings[i])
    }
    else
    {
        answer = String(strings[i])
    }
    
    return answer
}
