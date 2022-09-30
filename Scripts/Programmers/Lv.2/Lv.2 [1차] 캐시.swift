func solution(_ cacheSize:Int, _ cities:[String]) -> Int
{
    if cacheSize == 0 {return cities.count * 5}
    
    let cityList = cities.map{$0.lowercased()}
    
    let max = cacheSize
    
    var runTime : Int = 0
    
    var cacheList : [String] = []
    
    for c in cityList
    {
        if cacheList.contains(c)
        {
            runTime += 1
            cacheList.remove(at:cacheList.firstIndex(of:c)!)
            cacheList.append(c)
        }
        else
        {
            runTime += 5
            if cacheList.count < max
            {
                cacheList.append(c)
            }
            else
            {
                cacheList.removeFirst()
                cacheList.append(c)
            }
        }
    }
    print(runTime)
    return runTime
}
