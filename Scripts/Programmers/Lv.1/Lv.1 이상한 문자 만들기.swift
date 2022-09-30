import Foundation

func solution(_ s:String) -> String
{
    var answer = s
    
    var answerReturn = ""
    
    var wordsChanged : [String] = []
    
    let words = s.split(separator : " ")
    
    
    
    for i in words
    {
        var map = i.map{String($0)}
        
        
        
        for a in 0...map.count-1
        {
            if a % 2 == 0
            {
                map[a] = String(map[a].uppercased())
            }
            else
            {
                map[a] = String(map[a].lowercased())
            }
        }
        wordsChanged.append(map.reduce(""){$0+$1})
        
    }
    for i in wordsChanged
    {
        if i != wordsChanged[wordsChanged.endIndex-1]
        {
            answerReturn = answerReturn + i + " "
            print(answerReturn)
        }
        else
        {
            answerReturn = answerReturn + i
        }
    }
    
    let spaceCheck = answer.map{String($0)}
    
    
    if spaceCheck[spaceCheck.count-1] == " "
    {
        answerReturn += " "
    }
    
    return answerReturn
}
