//
//  ToDoListViewViewModel.swift
//  Todo List
//
//  Created by Matt Vaughan-Jones on 14/10/2023.
//

import Foundation

// ViewModel for list of items view
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
