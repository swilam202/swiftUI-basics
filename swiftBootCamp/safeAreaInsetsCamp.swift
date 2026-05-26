//
//  safeAreaInsetsCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 26/05/2026.
//

import SwiftUI

struct safeAreaInsetsCamp: View {
    var body: some View {
        NavigationStack{
            VStack{
                ForEach(1..<10) { _ in
                    Rectangle()
                        .frame(width: 200,height: 200)
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle(Text("Title"))
            
        }
        .safeAreaInset(edge: .bottom) {
            Image(systemName: "gear")
                .padding()
                .frame(maxWidth: .infinity)
                .background(.teal)
                
                
            
        }
        
        
    }
}

#Preview {
    safeAreaInsetsCamp()
}
