//
//  ContentView.swift
//  CarouselCardList
//
//  Created by Subeen on 4/19/24.
//

import SwiftUI

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
    
    static let preview: [ListItem] = [
        .init(title: "1", color: .red),
        .init(title: "2", color: .blue),
        .init(title: "3", color: .green),
        .init(title: "4", color: .yellow),
        .init(title: "5", color: .gray),
        .init(title: "5", color: .gray),
        .init(title: "5", color: .gray),
        .init(title: "5", color: .gray),
        .init(title: "5", color: .gray),
    ]
}

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(ListItem.preview) { item in
                    item.color
                        
                        .frame(width: 400, height: 500)
                        .overlay {
                            Text(item.title)
                        }
                        .frame(width: 1200)
                        .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                            effect
                                .scaleEffect(phase.isIdentity ? 1 : 0.8)
                                .offset(x: offset(for: phase))
                                .blur(radius: 0.5)
                                
                        }
                    }
                }
            .scrollTargetLayout()
            }
        .scrollTargetBehavior(.viewAligned)
            
    }
    
    func offset(for phase: ScrollTransitionPhase) -> Double {
        switch phase {
        case .topLeading:
            700
        case .identity:
            0
        case .bottomTrailing:
            -700
        }
    }
}

#Preview {
    ContentView()
}
