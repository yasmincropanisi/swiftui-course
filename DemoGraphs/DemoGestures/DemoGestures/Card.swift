//
//  Card.swift
//  DemoGestures
//
//  Created by Yasmin Cropanisi on 15/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct Card: View {
  var body: some View {
    VStack {
      Text("Card")
        .font(.largeTitle)
        .foregroundColor(Color.white)
    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(Color.purple)
      .cornerRadius(30)
  }
}

struct Card_Previews: PreviewProvider {
  static var previews: some View {
    Card()
  }
}
