//
//  colorsBootCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 01/04/2026.
//

import SwiftUI

struct colorsBootCamp: View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .fill(Color("CustomColors").opacity(0.6))
            .shadow(color: .red, radius: 30)
           // .fill(Color(UIColor.systemMint))
            .frame(width: 150,height: 150)
            
    }
}

#Preview {
    colorsBootCamp()
}
