//
//  News.swift
//  CarouselCardList
//
//  Created by Subeen on 4/19/24.
//

import Foundation

struct News: Hashable {
    var id: UUID = UUID()
    var title: String
    var postDate: String
    var image: String
    var content: String
    var isBookmarked: Bool
    
    init(
        title: String = "",
        postDate: String = "",
        image: String = "",
        content: String = "",
        isBookmarked: Bool = false
    ) {
        self.title = title
        self.postDate = postDate
        self.image = image
        self.content = content
        self.isBookmarked = isBookmarked
    }
}
