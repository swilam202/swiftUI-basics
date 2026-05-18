//
//  stepperCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 14/05/2026.
//

import SwiftUI

struct stepperCamp: View {
    @State var stepperValue : Int = 5
    var body: some View {
        Stepper("Stepper 1: \(stepperValue)", value: $stepperValue)
        
        Stepper("Stepper 2: \(stepperValue)",
                onIncrement: {
                stepperValue += 2
            },
                onDecrement: {
               stepperValue -= 2
        }
        )
    }
}

#Preview {
    stepperCamp()
}
