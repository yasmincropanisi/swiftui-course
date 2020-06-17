//
//  StockCell.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct StockCellView: View {
  var stock: StockViewModel
  var body: some View {
    return HStack {
      VStack(alignment: .leading) {
        Text(stock.symbol)
          .font(.headline)
          .foregroundColor(Color.white)
          .padding(8)
        Text(stock.description)
          .font(.custom("Arial", size: 18))
          .foregroundColor(Color.gray)
      }
      Spacer()
      VStack {
        Text("\(stock.price)")
                  .font(.custom("Arial", size: 18))
          .foregroundColor(Color.white)
          .padding(8)
        Button(stock.price) {
          
        }.cornerRadius(10)
          .foregroundColor(Color.white)
          .background(Color.red)
      }
      
    }
  }
}
