//
//  tapGestureCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 14/05/2026.
//

import SwiftUI

struct tapGestureCamp: View {
    @State var flag : Bool = false
    var body: some View {
        Rectangle()
            .frame(width: 250,height: 250)
            .cornerRadius(20)
            .foregroundColor(flag ? .green : .red)
            .onTapGesture {
                flag.toggle()
            }
       
    }
}

#Preview {
    tapGestureCamp()
}
