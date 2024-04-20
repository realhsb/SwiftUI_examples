//
//  NewsViewModel.swift
//  CarouselCardList
//
//  Created by Subeen on 4/19/24.
//

import Foundation

public class NewsViewModel: ObservableObject {
    @Published var news: News
    
    init(news: News) {
        self.news = news
    }
}
