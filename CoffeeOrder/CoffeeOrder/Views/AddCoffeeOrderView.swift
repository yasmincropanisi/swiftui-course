//
//  AddCoffeeOrderView.swift
//  CoffeeOrder
//
//  Created by Yasmin Cropanisi on 10/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI
import Combine

struct AddCoffeeOrderView: View {
 
  @Binding var isPresented: Bool
  @ObservedObject private var addCoffeeOrderVM = AddCoffeeOrderViewModel()
  var body: some View {
    NavigationView {
      VStack {
        Form {
          Section(header: Text("Information").font(.body)) {
            TextField("Enter name", text: self.$addCoffeeOrderVM.name)
          }
          Section(header: Text("Select coffee").font(.body)) {
            ForEach(addCoffeeOrderVM.coffeeList, id:\.name) { coffee in
              CoffeeCellView(coffee: coffee, selection: self.$addCoffeeOrderVM.coffeeName)
            }
          }
          Section(header: Text("Select coffee").font(.body), footer: OrderTotalView(total: self.addCoffeeOrderVM.total)) {
            Picker("", selection:  self.$addCoffeeOrderVM.size) {
              Text("Small").tag("Small")
              Text("Medium").tag("Medium")
              Text("Large").tag("Large")
              
            }.pickerStyle(SegmentedPickerStyle())
          }
        }
        HStack {
          Button("Place Order") {
            self.addCoffeeOrderVM.placeOrder()
            self.isPresented = false
            
          }
        }.padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100))
          .background(Color.green)
          .foregroundColor(Color.white)
          .cornerRadius(10)
      }
      .navigationBarTitle("Add Order")
    }
  }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
  static var previews: some View {
    AddCoffeeOrderView(isPresented: .constant(false))
  }
}

//func fizzBuzz(n: Int) -> Void {
//
//
//    if numberIsMultipleOf(number: n, multiple: 3) && numberIsMultipleOf(number: n, multiple: 5) {
//        print("FizzBuzz")
//    } else if numberIsMultipleOf(number: n,multiple: 3) && !numberIsMultipleOf(number: n, multiple: 5) {
//         print("Fizz")
//    } else if !numberIsMultipleOf(number: n, multiple: 3) && numberIsMultipleOf(number: n,multiple: 5) {
//        print("Buzz")
//    } else {
//        print(n)
//    }
//
//
//}
//
