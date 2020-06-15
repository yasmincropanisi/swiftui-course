//
//  CoffeeViewModel.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

class CoffeeListViewModel {
  var coffeeList: [CoffeeViewModel] = [CoffeeViewModel]()
}

struct CoffeeViewModel {
  
  var coffee: Coffee
  
  init(coffee: Coffee) {
    self.coffee = coffee
  }
  
  var name: String {
    return coffee.name
  }
  var imageURL: String {
    return coffee.imageURL
  }
  var price: Double {
    return coffee.price
  }
}
