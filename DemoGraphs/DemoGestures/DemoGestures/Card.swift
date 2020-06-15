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
  @State private var scale: CGFloat = 1
  
  var body: some View {
    VStack {
      Image("mila")
        .resizable()
        .scaleEffect(self.scale)
        .frame(width: 300, height: 300)
        .cornerRadius(10)
        
        .gesture(MagnificationGesture()
          .onChanged{ value in
            self.scale = value.magnitude
        })
      
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
