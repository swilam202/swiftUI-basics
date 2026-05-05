//
//  buttonCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 01/05/2026.
//

import SwiftUI

struct buttonCamp: View {
    let title : String = "press"
    
    @State var count : Int = 0;
    var body: some View {
        VStack(spacing: 20){
            Button(title){
                count+=1
            }

            Button(action: {
                count+=1
            }, label: {
                Image(systemName: "plus")
            })
        
            Text("button was pressed \(count) times!")
                .foregroundColor(.blue)
        }
        
        
    }
}

#Preview {
    buttonCamp()
}
