//
//  stacksCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 26/04/2026.
//

import SwiftUI

struct stacksCamp: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 0,
            content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100,height: 100)
                Rectangle()
                    .fill(.blue)
                    .frame(width: 130,height: 130)
                Rectangle()
                    .fill(.green)
                    .frame(width: 150,height: 150)
            }
        )
    }
}

#Preview {
    stacksCamp()
}
