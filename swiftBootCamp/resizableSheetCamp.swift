//
//  resizableSheetCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 26/05/2026.
//

import SwiftUI

struct resizableSheetCamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        
            .onTapGesture {
                showSheet.toggle()
            }
            .sheet(isPresented: $showSheet){
                AnotherScreen()
                    .presentationDetents([.fraction(0.1),.height(200),.medium,.large])
                    .presentationDragIndicator(.visible)
                   // .interactiveDismissDisabled()
                
            }
    }
}


struct AnotherScreen : View {
    var body: some View {
        ZStack{
            Color.blue
            Text("Sheet body")
        
        }
    }
}

#Preview {
    resizableSheetCamp()
}
