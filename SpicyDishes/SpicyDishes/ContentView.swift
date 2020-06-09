//
//  ContentView.swift
//  SpicyDishes
//
//  Created by Yasmin Cropanisi on 04/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var name: String = "aaa"
 
  var body: some View {
    VStack {
      Text(name)
      TextField("Enter", text: $name)
  
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
