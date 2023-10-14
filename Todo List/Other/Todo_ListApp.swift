//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by Matt Vaughan-Jones on 14/10/2023.
//

import SwiftUI
import FirebaseCore

@main
struct Todo_ListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup { 
            MainView()
        }
    }
}
