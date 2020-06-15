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
    BarGraph(reports: Report.all())
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
