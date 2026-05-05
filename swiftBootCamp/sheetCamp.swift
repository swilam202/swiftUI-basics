//
//  sheetCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 06/05/2026.
//

import SwiftUI

struct sheetCamp: View {
    @State var showSheet : Bool = false
    
    var body: some View {
        VStack{
            Button("Show sheet"){
                showSheet.toggle()
            }
        }
    
        .frame(width: UIScreen.main.bounds.width,height:  UIScreen.main.bounds.height)
          
            
            .ignoresSafeArea()
            .background(.red)
            .sheet(isPresented: $showSheet, content: {
                sheetBody()
            })
    }
}

struct sheetBody : View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
        })
        
    }
}

#Preview {
    sheetCamp()
}
