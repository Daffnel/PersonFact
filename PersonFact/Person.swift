//
//  Person.swift
//  PersonFact
//
//  Created by Daniel A on 2025-04-26.
//

import Foundation
import SwiftData

@Model          //Detta hantera av swiftData
class Person{
    var name: String
    var emailAdress: String
    var details: String
    
    init(name: String, emailAdress: String, details: String) {
        self.name = name
        self.emailAdress = emailAdress
        self.details = details
    }
    
}
