//
//  lazyGridCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 28/04/2026.
//

import SwiftUI

struct lazyGridCamp: View {
let columns: [GridItem] = [
    GridItem(
        .adaptive(minimum: 100, maximum: 170),spacing:nil,alignment: nil),
    GridItem(.fixed(20),spacing: nil,alignment: nil),
    GridItem(.fixed(20),spacing: nil,alignment: nil),
]
    
    var body: some View {
        LazyVGrid(columns: columns,spacing: 100,pinnedViews: []){
            ForEach(1..<10) { index in
                Rectangle()
                    .fill(.green)
                    .frame(height:25)
                    
            }
        }
    }
}

#Preview {
    lazyGridCamp()
}
