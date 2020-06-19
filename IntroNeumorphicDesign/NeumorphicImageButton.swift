//
//  NeumorphicImageButton.swift
//  IntroNeumorphicDesign
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct NeumorphicImageButton: View {
  
  @State private var isPressed: Bool = false
  var onTap: () -> Void
  private var systemName: String
  private var size: CGSize
  
  var grayColor: Color {
    return Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
  }
  
  var whiteColor: Color {
    return Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
  }
  
  init(systemName: String, size: CGSize = CGSize(width: 60, height: 60), onTap: @escaping () -> Void) {
    self.systemName = systemName
    self.onTap = onTap
    self.size = size
  }
  
  var body: some View {
    Button(action: {
      self.isPressed = true
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
        self.isPressed = false
        self.onTap()
      }
    }) {
      //SF Symbols
      Image(systemName: systemName)
        .resizable()
        .frame(width: size.width, height: size.height)
        .padding(20)
        .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
    }.clipShape(Circle())
      .shadow(color: isPressed ? whiteColor : grayColor, radius: isPressed ?  4 : 8, x: 8, y: 8)
      .shadow(color: isPressed ? grayColor : whiteColor , radius: isPressed ? 4 : 8, x: -8, y: -8)
      .scaleEffect(self.isPressed ? 0.95 : 1.0)
      .animation(.spring())
  }

}

