//
//  navigationViewCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 06/05/2026.
//

import SwiftUI

struct navigationViewCamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Go to next Screen",destination: OtherPage())
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(.red)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Title")
            
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(leading: Text("Leading"),
                                railing: Image(systemName: "gear"))
            
        }
     
       
    }
}

struct OtherPage : View {
    var body: some View {
        Text("Next page")
    }
}

#Preview {
    navigationViewCamp()
}
