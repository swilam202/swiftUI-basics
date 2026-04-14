//
//  imageCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 14/04/2026.
//

import SwiftUI

struct imageCamp: View {
    var body: some View {
        Image("logo")
            //.renderingMode(.template)
        .resizable()
        .scaledToFit()
        //.aspectRatio(contentMode: .fill)
        //.cornerRadius(34)
        .clipShape(
            Circle()
        )
    }
}

#Preview {
    imageCamp()
}
