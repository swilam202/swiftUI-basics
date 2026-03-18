//
//  ContentView.swift
//  swiftBootCamp
//
//  Created by Swilam on 18/03/2026.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "hand.palm.facing.fill")
                .imageScale(.large)
                .font(.title)
                .foregroundStyle(.tint)
            Spacer().frame(height: 16)
            Text("Hello world!").bold()
            
        }
        .padding()
    }
   
}

#Preview {
    ContentView()
}
