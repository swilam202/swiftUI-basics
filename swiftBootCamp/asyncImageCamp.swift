//
//  asyncImageCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 18/05/2026.
//

import SwiftUI

struct asyncImageCamp: View {
    var body: some View {
        let url = URL(string:"https://www.mamp.one/wp-content/uploads/2024/09/image-resources2.jpg")
        
        //  AsyncImage(url: url)
        AsyncImage(url: url){ phase in
            switch phase {
            case .empty:
                ProgressView()
            case .failure:
                Image(systemName: "heart.fill")
                
            case .success(let image):
                image
                
            default:
                ProgressView()
                
                
            }
        }
        .background(.ultraThinMaterial)
    }
}
#Preview {
    asyncImageCamp()
}
