//
//  listsCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 07/05/2026.
//

import SwiftUI

struct listsCamp: View {
    @State var fruits : [String] = [
        "Banana","Apple","Watermelon"
    ]
    var body: some View {
        
        
        NavigationView{
            List{
                Section(header: Text("Fruits")){
                    ForEach(fruits, id: \.self) {
                        fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            .listStyle(DefaultListStyle())
            .navigationBarItems(leading: EditButton(),trailing: Button("Add"){
                add()
            })
            .navigationTitle(Text("Available"))
        }
        
        
    }
    
    func add(){
        fruits.append("New fruit")
    }
    
    func move(indexSet: IndexSet, index : Int){
        fruits.move(fromOffsets: indexSet, toOffset: index)
    }
    
    func delete(indexSet: IndexSet)
    {
        fruits.remove(atOffsets: indexSet)
        
    }
}

#Preview {
    listsCamp()
}
