//
//  OrderListView.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
  
  let orders: [OrderViewModel]
  
  init(orders: [OrderViewModel]) {
    self.orders = orders
  }
  
  var body: some View {
    List {
      ForEach(orders, id:\.id) { order in
        HStack {
          Image(order.coffeeName)
            .resizable()
            .frame(width: 150, height: 100)
            .cornerRadius(16)
          
          
          VStack {
            Text(order.name)
              .font(.title)
              .padding([.leading, .bottom], 10)
            HStack {
              Text(order.coffeeName)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
              
              Text(order.size)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
              
            }
          }
        }
      }
    }
  }
}

struct CoffeeCellView: View {
  let coffee: CoffeeViewModel
  @Binding var selection: String
  var body: some View {
    HStack {
      Image(coffee.imageURL)
        .resizable()
        .frame(width: 100, height: 100)
        .cornerRadius(16)
      Text(coffee.name)
        .font(.title)
        .padding([.leading], 20)
      Spacer()
      Image(systemName: self.selection == self.coffee.name ? "checkmark" : "").padding()
    }.onTapGesture {
      self.selection = self.coffee.name
    }
  }
}

struct OrderListView_Previews: PreviewProvider {
  static var previews: some View {
    OrderListView(orders: [OrderViewModel(order: Order(name: "Mary", size: "Regular", coffeeName: "Expresso", total: 2.5))])
  }
}
