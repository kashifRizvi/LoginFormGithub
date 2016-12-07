//
//  User.swift
//  LoginForm
//
//  Created by Kashif Rizvi on 07/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import Foundation

class User {

    var firstName : String?
    var lastName : String?
    var phoneNumber : Int64?
    var email : String?
    var password : String?
    var birthDay : String?
    var gender : String?
    
    init(firstName:String?, lastName:String?, email:String?, password:String?, phoneNumber:Int64?, birthDay:String? ) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phoneNumber = phoneNumber
        self.password = password
        self.birthDay = birthDay
    }
    
    init() {
    }
    
}
