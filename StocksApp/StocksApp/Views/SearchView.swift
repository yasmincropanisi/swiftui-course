//
//  SearchView.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct SearchView: View {
  
  @Binding var searchTerm: String
  
  var body: some View {
    HStack {
      Spacer()
      Image(systemName: "magnifyingglass")
      TextField("Search", text: self.$searchTerm)
        .foregroundColor(Color.primary)
        .padding(10)
      
      Spacer()
    }.foregroundColor(.secondary)
      .background(Color(.secondarySystemBackground))
      .cornerRadius(10)
      .padding(10)
  }
}
