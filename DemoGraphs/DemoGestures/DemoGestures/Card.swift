//
//  Card.swift
//  DemoGestures
//
//  Created by Yasmin Cropanisi on 15/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct Card: View {
  let tapped: Bool
  var body: some View {
    VStack {
      Text("Card")
        .font(.largeTitle)
        .foregroundColor(Color.white)
    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(tapped ? Color.purple : Color.blue)
      .cornerRadius(30)
  }
}

struct Card_Previews: PreviewProvider {
  static var previews: some View {
    Card(tapped: true)
  }
}
