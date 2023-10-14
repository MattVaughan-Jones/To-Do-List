//
//  ContentView.swift
//  Todo List
//
//  Created by Matt Vaughan-Jones on 14/10/2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
                //signed in
                ToDoListView()
            } else {
                LoginView()
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
