//
//  WebService.swift
//  GoodNews
//
//  Created by JINSEOK on 2023/02/05.
//

import Foundation

class WebService {
    
    func gerArticles(url: URL, completion: @escaping ([Article]?) -> Void) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            
            guard let response = response as? HTTPURLResponse, (200..<299) ~= response.statusCode else {
                print("Error: HTTP request failed")
                return
            }
            
            if let data = data {
                
                let articelList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articelList = articelList {
                    completion(articelList.articles)
                }
                print(articelList?.articles)
            }
        }.resume()
    }
}
