//
//  LoginView.swift
//  Todo List
//
//  Created by Matt Vaughan-Jones on 14/10/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .bold()
                                .foregroundColor(Color.white)
                        }
                    }
                }
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    LoginView()
}
