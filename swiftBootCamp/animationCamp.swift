//
//  animationCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 05/05/2026.
//

import SwiftUI

struct animationCamp: View {
    @State var flag : Bool = true
    var body: some View {
        
        
        VStack{
            Button("animate"){
                withAnimation(
                    Animation.easeIn(duration: 2)
                    .delay(1)
                    .repeatForever()
                    //.repeatCount(4)
                )
                {
                    flag.toggle()
                }
            //    flag.toggle()
            }
            Spacer()
            Rectangle()
                .foregroundColor(flag ? .green : .blue)
                .frame(width: flag ? 200: 300,height: flag ? 200: 300)
                .cornerRadius(flag ? 40: 100)
               // .animation(.bouncy)
        }
        
    }
}

#Preview {
    animationCamp()
}
