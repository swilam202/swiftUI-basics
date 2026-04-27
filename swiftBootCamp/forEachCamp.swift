//
//  forEachCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 27/04/2026.
//

import SwiftUI

struct forEachCamp: View {
    let data :[String] = ["Hi","Hello","Go"]
    var body: some View {
//        ForEach(1..<10) {
//            index in
//            Text("\(index)")
//        }
        ForEach(data.indices) { index in
            Text("\(data[index])")
        }
    }
}

#Preview {
    forEachCamp()
}
