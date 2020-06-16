//
//  ContentView.swift
//  CoreImageSwiftUIIntegration
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI
struct ContentView: View {
  
  let images = ["cat1", "dog", "tree", "mountains"]
  @State private var selectedImage = ""
  private var imageDetectionManager: ImageDetectionManager
  @ObservedObject private var imageDetectionVM: ImageDetectionViewModel
  
  init() {
    self.imageDetectionManager = ImageDetectionManager()
    self.imageDetectionVM = ImageDetectionViewModel(manager: imageDetectionManager)
  }
  var body: some View {
    NavigationView {
      VStack {
        ScrollView([.horizontal]) {
          HStack {
            ForEach(self.images, id: \.self) { name in
              Image(name)
                .resizable()
                .frame(width: 300, height: 300)
                .padding()
                .onTapGesture {
                  self.selectedImage = name
              }.border(Color.gray, width:  self.selectedImage == name ? 2 : 0)
            }
          }
        }
        Button("Detect") {
          self.imageDetectionVM.detect(self.selectedImage)
        }.padding()
          .background(Color.orange)
          .foregroundColor(Color.white)
          .cornerRadius(10)
        
        Text(self.imageDetectionVM.predictionLabel)
          .font(.body)
          .padding()
        
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
