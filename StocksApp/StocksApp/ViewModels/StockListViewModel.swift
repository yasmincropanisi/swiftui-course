//
//  StockListViewModel.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import SwiftUI

class StockListViewModel: ObservableObject {
  
  @Published var dragOffset: CGSize = CGSize(width: 0, height: 650)
  @Published var searchTerm: String = ""
  @Published var stocks: [StockViewModel] = [StockViewModel]()
  @Published var news: [NewsArticleViewModel] = [NewsArticleViewModel]()

  
  func load() {
    fetchNews()
    fetchStocks()
  }
  
  private func fetchStocks() {
    WebService().getStocks { stocks in
      if let stocks = stocks {
        DispatchQueue.main.async {
          self.stocks = stocks.map(StockViewModel.init)
        }
      }
    }
  }
  
  private func fetchNews() {
    WebService().getTopNews { news in
      if let news = news {
        DispatchQueue.main.async {
          self.news = news.map(NewsArticleViewModel.init)
        }
      }
    }
  }
  
}
