//
//  colorPickerCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 13/05/2026.
//

import SwiftUI

struct colorPickerCamp: View {
    @State var selectedColor : Color = .red
    
    var body: some View {
        ZStack{
            selectedColor.ignoresSafeArea()
            
            ColorPicker(selection: $selectedColor) {
                Text("\(selectedColor.hashValue)")
            }.padding()
            .background(.white)
            .cornerRadius(20)
            .padding()
            
        }
    }
}

#Preview {
    colorPickerCamp()
}
