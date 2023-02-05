//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by JINSEOK on 2023/02/05.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=bc83fae28aeb4e07ab75f770c6b23bb6") else { return }
        
        Task {
            do {
                let articles = try await WebService().getArticles(url: url)

                
                self.articleListVM = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            } catch {
                print(error)
            }
        }
        
    }
}
