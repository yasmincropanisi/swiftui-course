//
//  ContentView.swift
//  SwiftUIBasicAnimation
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showDetails: Bool = false
  var body: some View {
    VStack {
      Button("Press me") {
        self.showDetails.toggle()
      }
      HStack {
        Text("🛬")
          .font(.custom("Arial", size: 100))
          .offset(x: self.showDetails ? UIScreen.main.bounds.width - 120 : 0)
          .animation((.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0)))
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
