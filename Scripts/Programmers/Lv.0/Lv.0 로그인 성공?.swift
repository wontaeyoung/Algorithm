//
//  Lv.0 로그인 성공?.swift
//  Algorithm
//
//  Created by 원태영 on 2022/10/12.
//

import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    return db.contains(id_pw) ? "login"
    : db.map{$0[0]}.contains(id_pw[0]) ? "wrong pw"
    : "fail"
}
