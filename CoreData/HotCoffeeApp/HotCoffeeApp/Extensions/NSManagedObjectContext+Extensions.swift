//
//  NSManagedObjectContext+Extensions.swift
//  HotCoffeeApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
  
  static var current: NSManagedObjectContext {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    return appDelegate.persistentContainer.viewContext
  }
  
}
