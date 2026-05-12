//
//  pickerCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 12/05/2026.
//

import SwiftUI

struct pickerCamp: View {
    
    init() {
        let attributes : [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.red
                
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    @State var selected : Int = 0
    var body: some View {
        Picker(selection: $selected,label: Text("\(selected)").background(.red)) {
            ForEach(1..<10) { number in
                Text("\(number)").tag(number)
            }
            
        }
        .pickerStyle(WheelPickerStyle())

    }
}

#Preview {
    pickerCamp()
}
