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
  
  
  func stringAnagram(dictionary: [String], query: [String]) -> [Int] {
    var results = query.map {_ in 0 }
    let sortedDictionary = dictionary.map { dict -> String in
      return String(dict.sorted())
    }
    let sortedQuery = query.map { q -> String in
      return String(q.sorted())
    }
    
    for (index, item) in sortedQuery.enumerated() {
      sortedDictionary.map { dict in
        if item == dict {
          results[index] += 1
        }
      }
    }
    return results
    
  }
  
  func isAnagram(firstWord: String, secondWord: String) -> Bool {
    guard firstWord.count == secondWord.count else { return false }
    return firstWord.sorted() == secondWord.sorted()
  }
  
  func sockMerchant(n: Int, ar: [Int]) -> Int {
    var pais = Dictionary<Int, Int>()
    let copy = ar
    var result = 0
    ar.forEach { item in
      let pairs = copy.filter { $0 == item }
      if pairs.count / 2 == 0 {
        result += 1
      }
    }
    return result
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
