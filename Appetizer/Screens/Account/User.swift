//
//  User.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import Foundation

struct User: Codable {
    
    var firstName: String
    var lastName: String
    var email: String
    var dateOfBirth: Date
    var extraNapkins: Bool
    var frequentRefills: Bool
}

extension User {
    
    static var empty: User {
        
        return .init(firstName: "",
                     lastName: "",
                     email: "",
                     dateOfBirth: Date(timeIntervalSinceNow: -(60 * 60 * 24 * 356 * 24)),
                     extraNapkins: false,
                     frequentRefills: false)
    }
}
