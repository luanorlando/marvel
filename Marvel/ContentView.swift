//
//  ContentView.swift
//  Marvel
//
//  Created by Luan Orlando on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State
    var buttonTitle: String = "Clique aqui!"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button(action: {
                buttonTitle = "Button Clicked"
            }) {
                Text(buttonTitle)
            }
            .padding()
            .border(.accent)
            .cornerRadius(12)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.accent, lineWidth: 2.0)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
