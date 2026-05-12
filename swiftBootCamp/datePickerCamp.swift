//
//  datePickerCamp.swift
//  swiftBootCamp
//
//  Created by Swilam on 13/05/2026.
//

import SwiftUI

struct datePickerCamp: View {
    @State var selectedDate : Date = Date()
    let startingDate : Date = Calendar.current.date(from: DateComponents(year: 2020)) ?? Date()
    let endingDate : Date = Date()
    
    var dateFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack{
            Text(dateFormatter.string(from: selectedDate))
            DatePicker("Date", selection: $selectedDate,
                       in: startingDate...endingDate
                      // displayedComponents: [.hourAndMinute,.date]
                       
                       )
                .datePickerStyle(CompactDatePickerStyle())
        }
    }
}

#Preview {
    datePickerCamp()
}
