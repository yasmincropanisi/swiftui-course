//
//  ContentView.swift
//  SpicyDishes
//
//  Created by Yasmin Cropanisi on 04/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var model = Dish.all()
  @State private var isSpicy = false
  
  
  var body: some View {
    List {
      Toggle(isOn: $isSpicy) {
        Text("Spicy")
          .font(.title)
      }
      
      ForEach(model.filter { $0.isSpicy == self.isSpicy}) { dish in
        HStack {
          
          Image(dish.imageURL)
            .resizable()
            .frame(width: 100, height: 100)
          Text(dish.name)
            .font(.title)
            .lineLimit(nil)
          Spacer()
          if dish.isSpicy {
            Image("icon")
              .resizable()
              .frame(width: 20, height: 20)
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
