//
//  UserData.swift
//  MVVM-C
//
//  Created by MacBookPro on 31.01.2022.
//

import Foundation

struct UserData {
    var name: String?
    var city: String?
    var email: String?
    var phone: String?
}

extension UserData {
    static var userData = UserData(name: "Nick", city: "Grodno", email: "test@mail.com", phone: "+375 29 2235676")
}
