//
//  themeCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 14/05/2026.
//

import SwiftUI

// MARK: view
struct themeCamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("CustomColors"))
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(colorScheme == .light ? .blue : .green)
            
            
        }
            
    }
}

#Preview {
    themeCamp()
        .preferredColorScheme(.dark)
    
}
