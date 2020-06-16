//
//  OrderListViewModel.swift
//  HotCoffeeApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class OrderListViewModel: ObservableObject {
  
  
  @Published
  var orders = [OrderViewModel]()
  
  init() {
    fetchAllOrders()
  }
  
  func deleteOrder(_ orderVM: OrderViewModel) {
    CoreDataManager.shared.deleteOrder(name: orderVM.name)
    fetchAllOrders()
  }
  
  func fetchAllOrders() {
    self.orders = CoreDataManager.shared.fetchAllOrders().map(OrderViewModel.init)
    print(orders)
  }
}


class OrderViewModel {
  var name: String = ""
  var type: String = ""
  
  init(order: Order) {
    self.name = order.name!
    self.type = order.type!
  }
}
