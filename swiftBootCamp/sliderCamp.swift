//
//  sliderCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 14/05/2026.
//

import SwiftUI

struct sliderCamp: View {
    @State var sliderValue : Double = 3
    var body: some View {
        VStack{
            Text(String(format: "%.0f", sliderValue))

            Slider(value: $sliderValue, in: 1...5,
                   step: 1.0,
                   label: {
                Text("Label")
            }) {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            }

            
        }
    }
}

#Preview {
    sliderCamp()
}
