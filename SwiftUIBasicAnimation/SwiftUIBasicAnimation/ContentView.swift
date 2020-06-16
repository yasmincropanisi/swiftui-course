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
        Text(self.showDetails ? "Hide details" : "Show details")
        Image(systemName: "chevron.up.square")
          .rotationEffect(.degrees(self.showDetails ? 0 : 180))
          .animation(.easeOut)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
