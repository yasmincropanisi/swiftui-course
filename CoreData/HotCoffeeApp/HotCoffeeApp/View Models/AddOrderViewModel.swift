//
//  AddOrderViewModel.swift
//  HotCoffeeApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct AddOrderViewModel {

  var name: String = ""
  var type: String = ""
  
  func saveOrder() {
    CoreDataManager.shared.saveOrder(name: name, type: type)
  }
  
}
