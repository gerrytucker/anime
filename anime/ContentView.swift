//
//  ContentView.swift
//  anime
//
//  Created by Gerry Tucker on 05/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                animationAmount += 1
            }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount)
                .animation(.default, value: animationAmount)
                .blur(radius: (animationAmount - 1) * 3)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
