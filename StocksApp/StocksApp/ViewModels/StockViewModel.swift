//
//  StockViewModel.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct StockViewModel {
  
  let stock: Stock
  
  var symbol: String {
    return self.stock.symbol.uppercased()
  }
  
  var description: String {
    return stock.description
  }
  
  var price: String {
    return String(format: "%.2f", stock.price)
  }
}
