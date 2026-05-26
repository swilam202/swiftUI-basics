//
//  ViewModelCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 17/05/2026.
//

import SwiftUI
import Combine

struct FruitModel : Identifiable{
    let id : String = UUID().uuidString
    let count: Int
    let name: String
}


class FruitViewModel : ObservableObject{
   @Published var fruits : [FruitModel] = []
    @Published var isLoading: Bool
    
    init(){
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.fruits.append(FruitModel(count: 5, name: "Banana"))
            self.fruits.append(FruitModel(count: 2, name: "Watermelon"))
            self.fruits.append(FruitModel(count: 3, name: "Apple"))
        })
        isLoading = false
    }
}

struct ViewModelCamp: View {
    
    // StateObject used when the data in the FruitViewModel don't change by the changes in the View
    // used on the init or the full view
  @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            if fruitViewModel.isLoading {
                ProgressView()
            } else{
                List{
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.green)
                                .padding(.trailing)
                            
                            Text(fruit.name)
                                .font(.headline)
                                
                            
                        }
                        .badge("Available")
                    }
                }
                .navigationTitle(Text("Fruits"))
                .navigationBarItems(trailing: NavigationLink(destination: SecondPage()
                                                             
                                                             
                                                             , label: {
                    Image(systemName: "arrow.forward")
                        .foregroundColor(.blue)
                }))


            }
        }
    }
}

struct SecondPage : View {
    
    // StateObject used when the data in the ObservedObject change by the changes in the View
    // used on the sub view
    @ObservedObject var fruitViewModel = FruitViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    

    var body: some View {
        NavigationView{
            List{
                ForEach(fruitViewModel.fruits) { fruit in
                    HStack{
                        Text("\(fruit.count)")
                            .foregroundColor(.green)
                            .padding(.trailing)
                        
                        Text(fruit.name)
                            .font(.headline)
                        
                    }
                }
            }
            .navigationTitle(Text("Fruits in the other page"))
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
            
        }            

    }
}

#Preview {
    ViewModelCamp()
}
