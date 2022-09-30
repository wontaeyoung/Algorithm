import Foundation

func solution(_ s:String) -> Int {
    
    var answer = s
    
    let words = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    
    let nums = [Int](0...9).map{String($0)}
    
    for i in 0..<words.count
    {
        answer = answer.replacingOccurrences(of: words[i], with: nums[i])
    }
    
    return Int(answer)!
}
