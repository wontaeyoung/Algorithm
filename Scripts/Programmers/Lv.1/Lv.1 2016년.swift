import Foundation

func solution(_ month:Int, _ day:Int) -> String
{
    // 요일의 종류를 담은 배열
    let days = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    
    // a월 b일를 총 일수로 환산한 값을 담을 변수
    var farFrom : Int = 0
    
    // 31일인 달
    let month31 = [1,3,5,7,8,10,12]
    
    // 30일인 달
    let month30 = [4,6,9,11]
    
    // [달 : 일수]
    var monthDict : [Int:Int] = [:]
    
    // 1월~12월을 돌면서 각 월의 일수를 저장
    for i in 1...12
    {
        if month31.contains(i)
        {
            monthDict[i] = 31
        }
        else if month30.contains(i)
        {
            monthDict[i] = 30
        }
        else { monthDict[i] = 29}
    }
    
    // a의 당월 이전까지의 일수를 모두 더함
    for i in 1..<month
    {
        farFrom += monthDict[i]!
        
    }
    
    // b의 일수를 추가로 더함
    farFrom += day
    
    // 총 일수 % 7의 나머지를 index로 요일에 접근
    return days[farFrom % 7]
}

/*
func solution(_ month:Int, _ day:Int) -> String {
    return ["THU","FRI","SAT","SUN","MON","TUE","WED"][(
        month == 1 ? day
        : (1...month-1).map{[1,3,5,7,8,10,12].contains($0) ? 31 : 30}.reduce(0,+) + (month > 2 ? day - 1 : day)
    ) % 7]
}
*/

/*
func solution(_ month:Int, _ day:Int) -> String {
    
    let days = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let month31 = [1,3,5,7,8,10,12]
    
    if month == 1 {
        return days[day % 7]
    }
    
    let preMonthDay = (1...month-1).map{month31.contains($0) ? 31 : 30}.reduce(0,+)
    let totalDays = preMonthDay + (month > 2 ? day-1 : day)
    
    return days[totalDays % 7]
}
*/
print(solution(5, 24))
print(solution(1, 1))

