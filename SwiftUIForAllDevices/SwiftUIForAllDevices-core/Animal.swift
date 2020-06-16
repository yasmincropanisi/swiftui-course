//
//  Animal.swift
//  SwiftUIForAllDevices
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct Animal: Hashable {
  let name: String
  let description: String
  let image: String
  
}

extension Animal {
  
  static var placeholder: Animal {
    return Animal(name: "", description: "", image: "")
  }
}
