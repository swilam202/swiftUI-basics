//
//  paddingCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 26/04/2026.
//

import SwiftUI

struct paddingCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.blue)
            .padding(.leading,20)
            .background(.green)
            .padding(.trailing,10)
            .background(.red)
    }
}

#Preview {
    paddingCamp()
}
