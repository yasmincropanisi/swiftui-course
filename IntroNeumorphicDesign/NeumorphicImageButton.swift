//
//  NeumorphicImageButton.swift
//  IntroNeumorphicDesign
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct NeumorphicImageButton: View {
  var body: some View {
    Button(action: {}) {
      //SF Symbols
      Image(systemName: "heart.fill")
        .resizable()
        .frame(width: 60, height: 60)
        .padding(30)
        .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
    }.clipShape(Circle())
      .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), radius: 8, x: 8, y: 8)
    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -8, y: -8)
  }
}

