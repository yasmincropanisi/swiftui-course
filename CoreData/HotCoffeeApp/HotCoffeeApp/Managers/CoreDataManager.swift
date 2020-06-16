//
//  CoreDataManager.swift
//  HotCoffeeApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
  
  static let shared = CoreDataManager(moc: NSManagedObjectContext.current)

  var moc: NSManagedObjectContext
  
  private init(moc: NSManagedObjectContext) {
    self.moc = moc
  }
  
  func fetchOrder(name: String) -> Order? {
    var orders = [Order]()
    let request: NSFetchRequest<Order> = Order.fetchRequest()
    request.predicate = NSPredicate(format: "name == %@", name)
    do {
      orders = try moc.fetch(request)
    } catch let error as NSError {
      print(error)
    }
    return orders.first
  }
  
  func deleteOrder(name: String) {
    do {
      if let order = fetchOrder(name: name) {
        moc.delete(order)
        try moc.save()
      }
    } catch let error as NSError {
      print(error)
    }
  }
  
  func fetchAllOrders() -> [Order] {
    var orders = [Order]()
    
    let orderRequest: NSFetchRequest<Order> = Order.fetchRequest()
    do {
      orders = try moc.fetch(orderRequest)
    } catch let error as NSError {
      print(error)
    }
    return orders
  }
  
  func saveOrder(name: String, type: String) {
    let order = Order(context: moc)
    order.name = name
    order.type = type
    
    do {
      try moc.save()
    } catch let error as NSError {
      print(error)
    }
  }
}
