//
//  Lv.1 성격 유형 검사하기.swift
//  Algorithm
//
//  Created by 원태영 on 2022/12/03.
//

import Foundation

func solution( survey:[String],  choices:[Int]) -> String {
    var result: String = ""
    let indexes : [String] = ["RT","CF","JM","AN"]
    var scoreDict : [String : Int] = [
        "R" : 0,
        "T" : 0,
        "C" : 0,
        "F" : 0,
        "J" : 0,
        "M" : 0,
        "A" : 0,
        "N" : 0,
    ]
    
    for i in 0...survey.count-1 {
        let disAgree : String = String(survey[i].first!)
        let agree : String = String(survey[i].last!)
        
        if choices[i] < 4 {
            if let score = scoreDict[disAgree] {
                scoreDict[disAgree] = score + 4 - choices[i]
            }
        } else if choices[i] > 4 {
            if let score = scoreDict[agree] {
                scoreDict[agree] = score + choices[i] - 4
            }
        }
    }
    
    for index in indexes {
            if let disAgree = index.first, let agree = index.last {
                let disAgreeScore = scoreDict[String(disAgree)] ?? 0
                let agreeScore = scoreDict[String(agree)] ?? 0

                if disAgreeScore < agreeScore {
                    result.append(String(agree))
                } else if disAgreeScore > agreeScore {
                    result.append(String(disAgree))
                } else {
                    result.append(index.sorted().first!)
                }
            }
        }
    return result
}

let survey = ["TR", "RT", "TR"]
let choices = [7, 1, 3]

print(solution(survey: survey, choices: choices))

