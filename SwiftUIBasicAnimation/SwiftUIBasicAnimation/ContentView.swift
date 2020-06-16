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
    Group {
      VStack(alignment: .center) {
        Spacer()
        Text("🦆")
          .font(.custom("Arial", size: 80))
          .scaleEffect(self.showDetails ? 2 : 1)
          .rotationEffect(.degrees(self.showDetails ? 360.0 : 0.0))
          .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0))
          
        Spacer()
        Button("Press me") {
          self.showDetails.toggle()
        }.padding()
        .background(Color.orange)
          .foregroundColor(Color.white)
        .cornerRadius(10)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
