import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int]
{
    // 동일 신고건의 중복을 제거하기 위한 Set 리스트
    var reportSet : Set<String> = Set(report)
    
    // [피신고자 : [신고자 리스트]]
    var reportPerson : [String : Set<String>] = [:]
    
    // 신고자가 받는 처리 메일 횟수 저장
    var mailCount : [String : Int] = [:]
    
    // 블랙리스트 (정지 대상)
    var blackList : Set<String> = []
    
    // 제출용 : 처리 결과 메일을 받는 횟수를 저장
    var answer : [Int] = []
    
    // 피신고자 리스트와 mailCount에 id_list key를 하나씩 넣고 초기화
    for i in id_list
    {
        reportPerson[i] = []
        mailCount[i] = 0
    }
    
    // 신고건에서 신고자와 피신고자 이름을 추출하고, 피신고자 : [신고자 리스트]에 추가
    for i in reportSet
    {
        guard let first = i.split(separator: " ").first else {return [0]}
        let reporter = String(first)
        
        guard let last = i.split(separator: " ").last else {return [0]}
        let reported = String(last)
        
        reportPerson[reported]?.insert(reporter)
    }
    
    // 피신고자의 신고자 배열 길이가 2 이상(신고자가 2명 이상)이면 블랙리스트에 추가
    for i in id_list
    {
        if reportPerson[i]!.count >= k
        {
            blackList.insert(i)
        }
    }
    
    
    // 정지 리스트의 key에 해당하는 value들은 메일 수신 횟수 + 1
    for i in blackList
    {
        for (key,value) in mailCount
        {
            if reportPerson[i]!.contains(key)
            {
                mailCount[key]! += 1
            }
        }
    }
    
    for i in id_list
    {
        answer.append(mailCount[i]!)
    }
    return answer
}
