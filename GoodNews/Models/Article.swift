//
//  Article.swift
//  GoodNews
//
//  Created by JINSEOK on 2023/02/05.
//

import Foundation

struct ArticleList: Codable {
    let articles: [Article]
    
}

struct Article: Codable {
    let title: String
    let description: String
}
