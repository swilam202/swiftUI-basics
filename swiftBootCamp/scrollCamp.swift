//
//  scrollCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 28/04/2026.
//

import SwiftUI

struct scrollCamp: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            ForEach(1..<10) { index in
                Rectangle()
                    .frame(width: 250,height:250)
                    .background(.red)
            }
        }
    }
}
#Preview {
    scrollCamp()
}
