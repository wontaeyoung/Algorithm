import Foundation

func solution(_ record:[String]) -> [String]
{
    var result : [String] = []
    var recordTuple : [(action : String, id : String, nickname : String)] = []
    var nicknameDict : [String : String] = [:]
    for r in record {
        let split : [String] = r.components(separatedBy : " ")
        if split[0] == "Leave" { recordTuple.append((split[0],split[1],"#")) }
        else { recordTuple.append((split[0],split[1],split[2])) }
    }
    for (action,id,nickname) in recordTuple where action != "Leave"{
        nicknameDict[id, default : ""] = nickname
    }
    for (action,id,nickname) in recordTuple where action != "Change" {
        if action == "Enter" { result.append("\(nicknameDict[id]!)님이 들어왔습니다.")}
        else { result.append("\(nicknameDict[id]!)님이 나갔습니다.")}
    }
    return result
}
