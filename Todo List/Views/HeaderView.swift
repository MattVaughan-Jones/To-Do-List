//
//  HeaderView.swift
//  Todo List
//
//  Created by Matt Vaughan-Jones on 14/10/2023.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let rotationAngel: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: rotationAngel))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80.0)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 350)
        .offset(y: -150)    }
}

#Preview {
    HeaderView(title: "Title",
               subtitle: "Subtitle",
               rotationAngel: 15,
               backgroundColor: .blue)
}
