//
//  AddCoffeeOrderViewModel.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

class AddCoffeeOrderViewModel: ObservableObject {
  
  var name: String = ""
  @Published var size: String = "Medium"
  @Published var coffeeName: String = ""
  
  private var webservice: Webservice
  
  var coffeeList: [CoffeeViewModel] {
    return Coffee.all().map(CoffeeViewModel.init)
  }
  
  init() {
    self.webservice = Webservice()
  }
  
  var total: Double {
    return calculateTotalPrice()
  }
  
  func placeOrder() {
    let order = Order(name: name, size: size, coffeeName: coffeeName, total: total)
    webservice.createCoffeOrder(order: order) { response in
      
    }
  }
  
  private func priceForSize() -> Double {
    let prices = ["Small": 2.0, "Medium": 3.0, "Large": 4.0]
    return prices[size]!
  }
  
  private func calculateTotalPrice() -> Double {
    let coffeeVM = coffeeList.first { $0.name == coffeeName }
    if let coffeeVM = coffeeVM {
      return coffeeVM.price * priceForSize()
    }
    return 0
  }
}
