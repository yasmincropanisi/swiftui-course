//
//  Webservice.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

class Webservice {
  
  
  func createCoffeOrder(order: Order, completion: @escaping (CreateOrderResponse?) -> ()) {
    guard let url = URL(string: "https://silent-heavy-banana.glitch.me/orders") else {
      return
    }
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = try? JSONEncoder().encode(order)
    
    URLSession.shared.dataTask(with: request) { data, responde, error in
      guard let data = data, error == nil else {
        DispatchQueue.main.async {
          completion(nil)
        }
        return
      }
      let createOrderResponse = try? JSONDecoder().decode(CreateOrderResponse.self, from: data)
      DispatchQueue.main.async {
        completion(createOrderResponse)
      }
    }.resume()
  }
  
  
  func getAllOrders(completion: @escaping ([Order]?) -> ()) {
    
    guard let url = URL(string: "https://silent-heavy-banana.glitch.me/orders") else {
      completion(nil)
      return
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      guard let data = data, error == nil else {
        DispatchQueue.main.async {
          completion(nil)
        }
        return
      }
      
      print(data)
      let orders = try? JSONDecoder().decode([Order].self, from: data)
      DispatchQueue.main.async {
        completion(orders)
      }
    }.resume()
  }
}
