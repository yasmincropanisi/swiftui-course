//
//  ContentView.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 09/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject private var orderListVM = OrderListViewModel()
  @State private var showModal: Bool = false
    var body: some View {
      NavigationView {
      OrderListView(orders: self.orderListVM.orders)
        .navigationBarTitle("Coffee Orders")
        .navigationBarItems(leading: Button(action: reloadOrders) {
          Image(systemName: "arrow.clockwise")
            .foregroundColor(Color.white)
          }, trailing: Button(action: showAddCoffeeOrderView) {
            Image(systemName: "plus")
              .foregroundColor(Color.white)
        })
        .sheet(isPresented: $showModal) {
          AddCoffeeOrderView(isPresented: self.$showModal)
        }
      }
  }
  
  private func reloadOrders() {
    orderListVM.fetchOrders()
  }
  
  private func showAddCoffeeOrderView() {
    self.showModal = true
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
