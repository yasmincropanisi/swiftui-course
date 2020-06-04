//
//  Dish.swift
//  Grids
//
//  Created by Yasmin Cropanisi on 04/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
  
  let id = UUID()
  let name: String
  let price: Double
  let imageURL: String
}

extension Dish {
  static func all() -> [Dish] {
    return [
      Dish(name: "Pizza", price: 35, imageURL: "pizza"),
      Dish(name: "Caprese Salad", price: 25, imageURL: "capresesalad"),
      Dish(name: "Mushroom Risotto", price: 70, imageURL: "mushroomrisotto"),
      Dish(name: "Lasagna", price: 40, imageURL: "lasagna"),
      Dish(name: "Focaccia", price: 20, imageURL: "focaccia"),
      Dish(name: "Bruschetta", price: 22, imageURL: "bruschetta"),
      Dish(name: "Tiramisu", price: 10, imageURL: "tiramisu")
    ]
  }
}
