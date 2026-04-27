//
//  famesCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 16/04/2026.
//

import SwiftUI

struct famesCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .frame(width: 100)
            .background(.blue)
            .frame(height: 120)
            .background(.indigo)
            .frame(maxWidth: .infinity)
            .background(.yellow)
            .frame(maxHeight: .infinity,alignment: .top)
            .background(.purple)
    }
}

#Preview {
    famesCamp()
}
