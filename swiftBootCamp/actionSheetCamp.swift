//
//  actionSheetCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 07/05/2026.
//

import SwiftUI

struct actionSheetCamp: View {
    @State var showActionSheet : Bool = false
    var body: some View {
        Button("show action sheet"){
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Title"),message: Text("Message"),buttons: [
                .cancel(),
                .default(Text("defalut")),
                .destructive(Text("destructive"))
                
            
            ])
        }
    }
}

#Preview {
    actionSheetCamp()
}
