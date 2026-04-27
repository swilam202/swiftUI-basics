//
//  spacerCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 27/04/2026.
//

import SwiftUI

struct spacerCamp: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(.red)
                .frame(width: 50,height: 50)
            Spacer()
                .frame(height: 10)
                .background(.green)
            Rectangle()
                .fill(.blue)
                .frame(width: 50,height: 50)
            Spacer()
                .frame(height: 10)
                .background(.green)
                
            Rectangle()
                .fill(.orange)
                .frame(width: 50,height: 50)
           
        }.frame(height: 100)
    }
}

#Preview {
    spacerCamp()
}
