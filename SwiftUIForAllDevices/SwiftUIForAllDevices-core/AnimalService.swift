//
//  AnimalService.swift
//  SwiftUIForAllDevices
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

class AnimalService {
  
  static func fetchAll() -> [Animal] {
    return [
      Animal(name: "Tiger", description: "This is a tiger", image: "🐅"),
      Animal(name: "Rat", description: "This is a rat", image: "🐀"),
      Animal(name: "Giraffe", description: "This is a giraffe", image: "🦒"),
      Animal(name: "Cat", description: "This is a cat", image: "🐈")
    ]
  }
  
}
