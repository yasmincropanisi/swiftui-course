 //
 //  ContentView.swift
 //  Grids
 //
 //  Created by Yasmin Cropanisi on 04/06/20.
 //  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
 //
 
 import SwiftUI
 
 struct ContentView: View {
  let dishes = Dish.all()
  var body: some View {
    let chunckedDishes = dishes.chunked(into: 3)
    return List {
      //rows
      ForEach(0..<chunckedDishes.count) { index in
        HStack {
          ForEach(chunckedDishes[index]) { dish in
            Image(dish.imageURL)
              .resizable()
              .frame(minWidth: 80.0, idealWidth: 95.0, maxWidth: 105.0, minHeight: 60.0, idealHeight: 75.0, maxHeight: 90.0, alignment: .center)
              .scaledToFit()
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
 
 extension Array {
  
  func chunked(into size: Int) -> [[Element]] {
    return stride(from: 0, to: count, by: size).map {
      Array(self[$0..<Swift.min($0 + size, count)])
    }
  }
 }
