////
////  NewsListView.swift
////  CarouselCardList
////
////  Created by Subeen on 4/19/24.
////
//
//import SwiftUI
//
//struct NewsListView: View {
//    
//    @EnvironmentObject var newsListViewModel: NewsListViewModel
//    @State var selectedIndex: Int = 0
//    
//    var body: some View {
//        ZStack {
//            Color.backgroundDark.ignoresSafeArea(.all)
//            GeometryReader { geometry in
//                let size = geometry.size
//                
//                ScrollView(.horizontal, showsIndicators: false) {
//                    LazyHStack() {
//                        ForEach(newsListViewModel.newsList , id: \.self) { news in
//                            // In order to move the card in reverse direction (parallax effect)
////                            GeometryReader { proxy in
////                                let cardSize = proxy.size
////                                
//////                                HStack {
//////                                    Spacer()
//////                                    NewsView(news: news)
////                                Rectangle()
////                                    .foregroundStyle(.white)
////                                    .scrollTransition { view, phase in
////                                        view
//////                                        switch phase {
//////                                        case .topLeading: break
//////
//////                                        }
////                                            .scaleEffect(phase.isIdentity  ? 1 : 0.7)
//////                                            .offset(x: phase.toLeading ? 1 : 0.5)
////                                            .offset(x: offset(for: phase))
////            //                                    .offset(x : phase.isIdentity  ? 0 : -800)
////            //                                    .rotation3DEffect(.degrees(10), axis: (1, 2, 1))
////                                            .opacity(phase.isIdentity  ? 1 : 0.7)
////                                        
//                            
//                                Rectangle()
//                                        .foregroundStyle(.white)
//                                        .scrollTransition { view, phase in
//                                                                                view
//                                        //                                        switch phase {
//                                        //                                        case .topLeading: break
//                                        //
//                                        //                                        }
//                                                                                    .scaleEffect(phase.isIdentity  ? 1 : 0.7)
//                                        //                                            .offset(x: phase.toLeading ? 1 : 0.5)
//                                                                                    .offset(x: offset(for: phase))
//                                    }
////                                    Spacer()
////                                }
//                                    
//                            } // GEOREADER
//                            .frame(width: size.width)
////                            .frame(width: 900)
//                            
//                        } // FOR_NEWSLIST
//                        
//                    } // LAZYHSTACK
//                    .scrollTargetLayout()
//                }
//                .scrollTargetBehavior(.viewAligned)
//            }
//            .frame(height: 500)
//        }
//    
//    }
//
//    
//    
//    struct NewsListContentView: View {
//        @EnvironmentObject var newsListViewModel: NewsListViewModel
//        
//        
//        
//        var body: some View {
////            ScrollViewReader { value in
////                ScrollView(.horizontal, showsIndicators: false) {
////                    LazyHStack {
////                        ForEach(newsListViewModel.newsList , id: \.self) { news in
////                            
////                            NewsView(news: news)
////                        }
////                    }
////                }
////            }
//            
//            GeometryReader { geometry in
//                let size = geometry.size
//                
//                ScrollView(.horizontal, showsIndicators: false) {
//                    LazyHStack() {
//                        ForEach(newsListViewModel.newsList , id: \.self) { news in
//                            // In order to move the card in reverse direction (parallax effect)
//                            GeometryReader { proxy in
//                                let cardSize = proxy.size
//                                
////                                HStack {
////                                    Spacer()
////                                    NewsView(news: news)
//                                Rectangle()
//                                    .foregroundStyle(.white)
//                                    .scrollTransition { view, phase in
//                                        view
////                                        switch phase {
////                                        case .topLeading: break
////                                            
////                                        }
//                                            .scaleEffect(phase.isIdentity  ? 1 : 0.7)
////                                            .offset(x: phase.toLeading ? 1 : 0.5)
////                                            .offset(x: offset2(for: phase))
//            //                                    .offset(x : phase.isIdentity  ? 0 : -800)
//            //                                    .rotation3DEffect(.degrees(10), axis: (1, 2, 1))
//                                            .opacity(phase.isIdentity  ? 1 : 0.7)
//                                        
//                                    }
////                                    Spacer()
////                                }
//                                    
//                            } // GEOREADER
//                            .frame(width: size.width)
////                            .frame(width: 900)
//                            
//                        } // FOR_NEWSLIST
//                        
//                    } // LAZYHSTACK
//                    .scrollTargetLayout()
//                }
//                .scrollTargetBehavior(.viewAligned)
//            }
//            .frame(height: 500)
//        }
//        
//        
//    }
//    //
////    private func offset2(for phase: ScrollTransitionPhase) -> Double {
////        switch phase {
////            
////        case .topLeading:
////            -200
////        case .identity:
////            0
////        case .bottomTrailing:
////            200
////        }
////    }
//    
//}
//
//#Preview {
//    NewsListView()
//        .previewInterfaceOrientation(.landscapeLeft)
//        .environmentObject(NewsListViewModel())
//}
