//
//  ContentView.swift
//  InteractiveBarCharts
//
//  Created by Subeen on 4/21/24.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    @State var selectedDay: Date?
    @State var selectedView: Int?
    
    var previews: [DailyViews] = [
        .init(dateStr: "1월 1일", views: 32),
        .init(dateStr: "1월 2일", views: 2),
        .init(dateStr: "1월 3일", views: 300),
        .init(dateStr: "1월 4일", views: 999),
        .init(dateStr: "1월 5일", views: 12),
        .init(dateStr: "1월 6일", views: 1),
        .init(dateStr: "1월 7일", views: 99),
    ]
    
    var body: some View {
        VStack {
            Chart{
                ForEach(previews) { day in
                    BarMark(
                        x: .value("Day", day.date, unit: .day),
                        y: .value("Views", day.views)
                        
                    )
                    .foregroundStyle(.orange)
                }
                
                if let selectedView {
                    RuleMark(
                        
                        y: .value("Views", selectedView)
                    )
                    .annotation(
                        position: .top,
                        alignment: .leading,
                        overflowResolution: .init(
                            x: .disabled,
                            y: .fit(to: .chart)
                        )
                    ) {
                        Text("\(selectedView )")
                    }
                }
            }
            .frame(height: 200)
            .padding(.horizontal, 20)
            .chartXSelection(value: $selectedDay)
            .chartYSelection(value: $selectedView)
        }
    }
}


struct DailyViews: Identifiable {
    let id = UUID()
    let dateStr: String // DateFormatter로 변환
    let views: Int
    
    var date: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM월 dd일"
        
        let convertedDate = dateFormatter.date(from: dateStr)!
        
        return convertedDate
    }
}


#Preview {
    ContentView()
}
