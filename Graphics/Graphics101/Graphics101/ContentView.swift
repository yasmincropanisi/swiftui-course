//
//  ContentView.swift
//  Graphics101
//
//  Created by Yasmin Cropanisi on 15/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Circle()
        .fill(Color.purple)
        .frame(width: 200, height: 200)
      Circle()
        .stroke(Color.green, lineWidth: 20)
      
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
