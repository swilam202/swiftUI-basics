//
//  contextMenuCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 07/05/2026.
//

import SwiftUI

struct contextMenuCamp: View {
    var body: some View {
        VStack{
            Text("Show context menu")
                .padding(20)
                .background(.yellow)
                
        }.contextMenu(menuItems: {
            Button("Option 1") {
                print("Option 1 tapped")
            }
            Button("Option 2") {
                print("Option 2 tapped")
            }
            Button("Option 3", role: .destructive) {
                print("Option 3 tapped")
            }
        })
    }
}

#Preview {
    contextMenuCamp()
}
