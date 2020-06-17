//
//  ContentView.swift
//  IntroNeumorphicDesign
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      NeumorphicImageButton()
        .padding()
      
      Text("Hello people")
        .font(.body)
        .foregroundColor(Color.white)
    }.frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
