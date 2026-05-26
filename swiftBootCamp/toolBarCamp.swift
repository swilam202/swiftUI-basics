//
//  toolBarCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 26/05/2026.
//

import SwiftUI

struct toolBarCamp: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ForEach(1..<10) { x in
                        Rectangle()
                            .frame(width: 200,height: 200)
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle(Text("Hello"))
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Image(systemName: "gear")
                }
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "heart.fill")
                }
            }
            .toolbarVisibility(.automatic)
            .navigationBarTitleDisplayMode(.automatic)
            .toolbarTitleMenu{
                Text("option 1")
                Text("option 2")
                Text("option 3")
            }
        }
    }
}

#Preview {
    toolBarCamp()
}
