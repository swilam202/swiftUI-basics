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
          
            Text("Hello world! my name is mahmoud what about your name".capitalized)
                .font(.callout)
                .multilineTextAlignment(.leading)
                .frame(width: 94,height: 130,alignment: .center)

            
        }
        .padding()
    }
   
}

#Preview {
    ContentView()
}
