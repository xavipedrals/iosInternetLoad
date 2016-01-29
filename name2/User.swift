//
//  User.swift
//  name2
//
//  Created by mac33 on 29/1/16.
//  Copyright © 2016 mac33. All rights reserved.
//

import Foundation

class User{
    var name:Name?
    var email:String!
    var phone:String!
    var imageUrl:String!
    
    init(name:Name, email:String, phone:String, imageUrl:String){
        self.name = name
        self.email = email
        self.phone = phone
        self.imageUrl = imageUrl
    }
}