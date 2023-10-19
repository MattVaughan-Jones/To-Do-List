//
//  ToDoListViewViewModel.swift
//  Todo List
//
//  Created by Matt Vaughan-Jones on 14/10/2023.
//

import Foundation
import FirebaseFirestore

// ViewModel for list of items view
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
