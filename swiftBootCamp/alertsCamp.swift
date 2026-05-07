//
//  alertsCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 07/05/2026.
//

import SwiftUI

struct alertsCamp: View {
   @State var showDialog : Bool = false
    var body: some View {
        Button("show alert"){
            showDialog.toggle()
        }
        .alert(isPresented: $showDialog) {
            return Alert(title: Text("Warning"),
                         message: Text("there was an error!"),
                         primaryButton: .default( Text("Ok")),
                         secondaryButton: .destructive( Text("Cancel"))
            )
            
        }
    }
}

#Preview {
    alertsCamp()
}
