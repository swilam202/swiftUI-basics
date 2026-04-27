//
//  overlayCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 16/04/2026.
//

import SwiftUI

struct overlayCamp: View {
    var body: some View {
        Circle()
            .fill(.blue)
            .frame(width: 150,height: 150)
            .overlay(
                Circle()
                    .fill(.red)
                    .frame(width: 100,height: 100)
            )
            .background(
                Circle()
                    .fill(.brown)
                    .frame(width: 200,height: 200)
            )
            
    }
}

#Preview {
    overlayCamp()
}
