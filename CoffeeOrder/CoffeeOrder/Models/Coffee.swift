//
//  Coffee.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct Coffee: Codable {
  
  let name: String
  let imageURL: String
  let price: Double
}

extension Coffee {
  static func all() -> [Coffee] {
    return [
      Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 5.0),
      Coffee(name: "Expresso", imageURL: "Expresso", price: 1.5),
      Coffee(name: "Regular", imageURL: "Regular", price: 4.0)
    ]
  }
}
