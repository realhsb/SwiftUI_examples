//
//  ContentView.swift
//  CarouselCardList
//
//  Created by Subeen on 4/19/24.
//

import SwiftUI

struct ExampleContentView: View {
    
    @StateObject var newsListViewModel: NewsListViewModel
    
    var body: some View {
        VStack {
            CaroulselView(list: newsListViewModel.newsList)
        }
    }

    private struct CaroulselView: View {
        
        var list: [News] = []
        
        func offset(for phase: ScrollTransitionPhase) -> Double {
            
            switch phase {
            case .topLeading:
                800
            case .identity:
               0
            case .bottomTrailing:
                -800
            }
        }
        
        fileprivate var body: some View {
            GeometryReader { geometry in
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(list, id: \.self) { item in
                            NewsView(news: item)
                                .frame(width: geometry.size.width)
                            
                                .scrollTransition(topLeading: .interactive, bottomTrailing: .interactive, axis: .horizontal) { effect, phase in
                                    effect
                                        .scaleEffect(phase.isIdentity ? 1 : 0.8)
                                        .offset(x: offset(for: phase))
                                        .blur(radius: phase.isIdentity ? 0 : 1)
                                }
                        }
                    }
                    .scrollTargetLayout()
                }
                .scrollTargetBehavior(.viewAligned)
            }
        }
    }
}

#Preview {
    ExampleContentView(newsListViewModel: NewsListViewModel())
}
