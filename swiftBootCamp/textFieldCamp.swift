//
//  textFieldCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 07/05/2026.
//

import SwiftUI

struct textFieldCamp: View {
    @State var text : String = ""
    var body: some View {
        TextField("Type something",text: $text)
            .padding()
            .background(.gray.opacity(0.2))
            
    }
}

#Preview {
    textFieldCamp()
}
