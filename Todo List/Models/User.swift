//
//  User.swift
//  Todo List
//
//  Created by Matt Vaughan-Jones on 14/10/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
