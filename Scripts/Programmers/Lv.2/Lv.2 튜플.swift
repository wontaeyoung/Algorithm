func solution(_ s:String) -> [Int]
{
    let split = s.map{String($0)}
    let nums = ["0","1","2","3","4","5","6","7","8","9"]
    var dict : [Int : Int] = [:]
    var numList : [Int] = []
    var num : String = ""
    
    for i in 0..<split.count {
        if nums.contains(split[i]) { num += split[i] }
        else {
            if num.count > 0 {
                numList.append(Int(num)!)
                num = ""
            }
        }
    }
    for i in numList { dict[i, default: 0] += 1 }
    return dict.sorted{$0.value > $1.value}.map{$0.0}
}
