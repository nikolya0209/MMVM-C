//
//  User.swift
//  MVVM-C
//
//  Created by MacBookPro on 26.01.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "nick", password: "12345")
    ]
}
