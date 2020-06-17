//
//  PlaceListView.swift
//  NearMeApp
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct PlaceListView: View {
  
  let landmarks: [Landmark]
  var onTap: () -> ()
  
  var body: some View {
    VStack {
      HStack {
        EmptyView()
      }.frame(width: UIScreen.main.bounds.size.width, height: 60)
        .background(Color.blue)
        .gesture(TapGesture()
          .onEnded(self.onTap))
      List(landmarks, id: \.id) { landmark in
        Text(landmark.name)
      }.animation(nil)
    }.cornerRadius(16)
  }
}


