//
//  tabViewCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 14/05/2026.
//

import SwiftUI

struct tabViewCamp: View {
    @State var selectedTab : Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            ZStack{
                Color.red.ignoresSafeArea()
                Text("page 0")
                
            }
            .tabItem {
                Image(systemName: "person.fill")
            }
            .tag(0)
            .badge(2)
            ZStack{
                Color.green.ignoresSafeArea()
                Text("page 1")
                
            }
            .tabItem {
                Image(systemName: "globe.fill")
            }
            .tag(1)
            .badge(0)
            ZStack{
                Color.yellow.ignoresSafeArea()
                Text("page 2")
                
            }
            .tabItem {
                Image(systemName: "heart.fill")
            }
            .tag(2)
        }
        
        .tabViewStyle(TabBarOnlyTabViewStyle())
        .accentColor(.teal)
    }
}

#Preview {
    tabViewCamp()
}
