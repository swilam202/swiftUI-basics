//
//  initsEnumsCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 27/04/2026.
//

import SwiftUI

struct initsEnumsCamp: View {
    
    init(fruit : Fruit){
        if(fruit == .apples){
            background = .red
            title = "Apples"
        }
        else{
            background = .orange
            title = "Orange"
        }
    }
    let background: Color
    let title: String
    
    enum Fruit{
       case apples
       case oranges
    }
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .foregroundColor(.white)
            .frame(width: 200,height: 200)
            .background(background)
            .cornerRadius(24)
            
    }
}

#Preview {
    initsEnumsCamp(fruit: .apples)
}
