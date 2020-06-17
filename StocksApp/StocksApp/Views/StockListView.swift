//
//  StockListView.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct StockListView: View {
  
  let stocks: [StockViewModel]
    var body: some View {
      List(stocks, id: \.symbol) { stock in
        StockCellView(stock: stock)
      }
    }
}

