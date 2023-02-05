//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by JINSEOK on 2023/02/05.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRawsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
         return ArticleViewModel(article)
    }
    
}

// 배열로 생성된 데이터를 하나의 기사로 받는다.
struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String? {
        return self.article.title
    }
    var description: String? {
        return self.article.description
    }
}
