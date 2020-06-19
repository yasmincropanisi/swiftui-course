//
//  OrderListViewModel.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import Combine

class OrderListViewModel: ObservableObject {
  
  @Published var orders = [OrderViewModel]()
  
  init() {
    fetchOrders()
  }
  
  func fetchOrders() {
    Webservice().getAllOrders { orders in
      if let orders = orders {
        self.orders = orders.map(OrderViewModel.init)
      }
    }
  }
}

class OrderViewModel {
  
  let id = UUID()
  
  var order: Order
  
  init(order: Order) {
    self.order = order
  }
  
  var name: String {
    return order.name
  }
  
  var size: String {
    return order.size
  }
  
  var coffeeName: String {
    return order.coffeeName
  }
  
  var total: Double {
    return order.total
  }
}
