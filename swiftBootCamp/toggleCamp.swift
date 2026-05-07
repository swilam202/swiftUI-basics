//
//  toggleCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 07/05/2026.
//

import SwiftUI

struct toggleCamp: View {
    @State var isOn : Bool = false
    
    var body: some View {
        Toggle(isOn: $isOn){
            Text("Toggle")
        }
        .padding()
        .toggleStyle(SwitchToggleStyle(tint: .red))
    }
}

#Preview {
    toggleCamp()
}
