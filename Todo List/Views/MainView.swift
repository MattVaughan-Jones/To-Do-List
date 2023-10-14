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
                accountView
            } else {
                //not signed in
                LoginView()
            }
        }
        .padding()
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
    
}

#Preview {
    MainView()
}
