//
//  ContentView.swift
//  CapturingPhotosSwiftUI
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showImagePicker: Bool = false
  @State private var image: Image? = nil
  var body: some View {
    VStack {
      Button("Open camera") {
        self.showImagePicker = true
        
      }.padding()
        .background(Color.purple)
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .font(.body)
    }.sheet(isPresented: self.$showImagePicker) {
      PhotoCapturedView(showImagePicker: self.$showImagePicker, image: self.$image)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
