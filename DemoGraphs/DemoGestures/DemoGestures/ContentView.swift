//
//  ContentView.swift
//  DemoGestures
//
//  Created by Yasmin Cropanisi on 15/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var tapped: Bool = false
  var body: some View {
    Card(tapped: self.tapped)
      .gesture(TapGesture(count: 1)
        .onEnded({ () in
          self.tapped.toggle()
        })
    )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
