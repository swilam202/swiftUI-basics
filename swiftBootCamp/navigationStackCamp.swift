//
//  navigationStackCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 26/05/2026.
//

import SwiftUI

struct navigationStackCamp: View {
    @State var fruits : [String] = ["orange", "mango"]
    @State var routes : [String] = []
    
    var body: some View {
        // the path is there so you can push to multi pages at one time
        NavigationStack(path: $routes){
            VStack(spacing: 10){
                Button("Go to multi page"){
                    routes.append(contentsOf: ["banana","orange", "mango"])
                }
                ForEach(fruits,id: \.self) { fruit in
                    NavigationLink (value: fruit){
                        Text("Go to \(fruit)")
                    }
                }
            }
            // for lazy building the other pages
            .navigationDestination(for: String.self) { fruit in
               Text(fruit)
                    .font(.headline)
                    .foregroundColor(.red)
            }
        }
        
    }
}

#Preview {
    navigationStackCamp()
}
