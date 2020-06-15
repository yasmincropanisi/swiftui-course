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
  @State private var cardDragState: CGSize = .zero
  @State private var cardRotateState: Double = 0
  
  var body: some View {
    Card(tapped: self.tapped)
      .animation(.easeIn)
      .offset(y: cardDragState.height)
      .rotationEffect(Angle(degrees: self.cardRotateState))
      .gesture(RotationGesture()
        .onChanged { value in
          self.cardRotateState = value.degrees
          
      })
      
      .gesture(DragGesture()
        .onChanged { value in
          self.cardDragState = value.translation
      }
      .onEnded { _ in
        self.cardDragState = CGSize.zero
        }
    )
      
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
