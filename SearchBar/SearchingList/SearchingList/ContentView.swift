//
//  ContentView.swift
//  SearchingList
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  let names = ["Azam", "Jake", "Alex", "Mary", "Jack", "Jerry"]
  @State private var searchTerm: String = ""
  var body: some View {
    List { SearchBar(text: $searchTerm)
      ForEach(self.names.filter {
        self.searchTerm.isEmpty ? true: $0.localizedStandardContains(self.searchTerm)
      }, id: \.self) { name in
        Text(name)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
