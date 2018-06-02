//
//  User.swift
//  DogHero
//
//  Created by Treinamento on 19/05/2018.
//  Copyright © 2018 Treinamento Porto Digital. All rights reserved.
//

import Foundation
import UIKit

class User {
    var name = ""
    var email = ""
    var password = ""
    var birthday = Date()
    
    init(name: String, email: String, password: String, birthday: Date) {
        self.name = name
        self.email = email
        self.password = password
        self.birthday = birthday
    }
}
