//
//  textEditorCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 07/05/2026.
//

import SwiftUI

struct textEditorCamp: View {
    @State var text : String = "starting text"
    var body: some View {
        ZStack{
            Color.blue
            TextEditor(text: $text)
                .padding()
                .colorMultiply(.red)
               
        }
    }
}

#Preview {
    textEditorCamp()
}
