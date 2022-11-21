//
//  Lv.0 옹알이 (1).swift
//  Algorithm
//
//  Created by 원태영 on 2022/11/21.
//

import Foundation

func solution(_ babbling:[String]) -> Int {
    return babbling.filter{ word in
        var word = word
        ["woo", "ye", "ma", "aya"].forEach{word = word.replacingOccurrences(of: $0, with: "-")}
        return word.replacingOccurrences(of: "-", with: "").isEmpty
    }.count
}
