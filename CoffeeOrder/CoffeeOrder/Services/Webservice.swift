//
//  Webservice.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

class Webservice {
  
  func getAllOrders(completion: @escaping ([Order]?) -> ()) {
    
    guard let url = URL(string: "https://silent-heavy-banana.glitch.me") else {
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
      
      let orders = try? JSONDecoder().decode([Order].self, from: data)
      DispatchQueue.main.async {
        completion(orders)
      }
    }.resume()
  }
}
