//
//  Order.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct Order: Codable {
  
  let name: String
  let size: String
  let coffeeName: String
  let total: Double
}
