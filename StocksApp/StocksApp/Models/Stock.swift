//
//  Stock.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct Stock: Decodable {
  let symbol: String
  let description: String
  let price: Double
  let change: String
}
