func solution(_ N:Int, _ stages:[Int]) -> [Int]
{
    var stageFailRate = [(Int,Float)]()
    var players = stages.count
    for i in 1...N {
        var remain : Int = 0
        for user in stages {
            if user == i {remain += 1}
        }
        stageFailRate.append((i,Float(remain) / Float(players)))
        players -= remain
    }
    return stageFailRate.sorted{$0.1 > $1.1}.map{$0.0}
}
