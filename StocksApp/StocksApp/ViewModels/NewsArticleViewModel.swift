//
//  NewsArticleViewModel.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct NewsArticleViewModel {
  
  let article: Article
  
  var imageURL: String {
    return article.imageURL
  }
  
  var title: String {
    return article.title
  }
  
  var publication: String {
    return article.publication.uppercased()
  }
}
