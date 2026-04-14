//
//  gradientCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 14/04/2026.
//

import SwiftUI

struct gradientCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 23)
            .fill(
//                LinearGradient(colors: [.red,.orange,.blue], startPoint: .leading, endPoint: UnitPoint.trailing)
                
//                RadialGradient(colors: [.red,.orange,.blue], center: .bottom,startRadius: 5,endRadius: 230)
         
                AngularGradient(colors: [.red,.orange,.blue],center: .bottom,angle: .degrees(180))

            )
        
            .frame(width: 200,height: 200)
    }
}

#Preview {
    gradientCamp()
}
