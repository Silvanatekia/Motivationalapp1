//
//  Usermodel.swift
//  MotivationalApp1
//
//  Created by Silvana Tekia on 09/11/2023.
//

import Foundation


struct User: Codable {
    let userId: Int?
    let userPassword: String?
    let userForename: String?
    let userSurname: String?
    let userEmail: String?
    let userMobile: String?
    
}
