//
//  safeAreaCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 28/04/2026.
//

import SwiftUI

struct safeAreaCamp: View {
    var body: some View {
        Rectangle()
            .frame(width: .infinity,height: .infinity)
            .edgesIgnoringSafeArea(.top)
            .foregroundColor(.red)
        
    }
}

#Preview {
    safeAreaCamp()
}
