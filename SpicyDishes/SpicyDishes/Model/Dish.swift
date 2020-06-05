//
//  Dish.swift
//  SpicyDishes
//
//  Created by Yasmin Cropanisi on 04/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
}

extension Dish {
    
    static func all() -> [Dish] {
        
        return [
        
            Dish(name: "Kung Pow Chicken", imageURL: "kungpow", isSpicy: true),
            Dish(name: "Sweet and Sour Chicken", imageURL: "sweet", isSpicy: false),
            Dish(name: "Spicy Red Chicken", imageURL: "spicy", isSpicy: true)
            
        ]
        
    }
    
}
